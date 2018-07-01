import sys
import re
import itertools

def take_until(s, key):
    try:
        i = s.index(key)
        return s[0:i]
    except:
        return s

def itake(iterable, n):
    for i, x in enumerate(iterable):
        if i < n:
            yield x
        else:
            break

def idrop(iterable, n):
    for i, x in enumerate(iterable):
        if i < n:
            continue
        else:
            yield x

def ijoin(iterable):
    for inner in iterable:
        for x in inner:
            yield x

def isplitif(iterable, pred):
    groups = itertools.groupby(iterable, lambda s: not pred(s))
    for k, g in groups:
        if k:
            yield list(g)
            # yield g
        else:
            for x in idrop(g, 1):
                yield []

def isplit(iterable, sep=None):
    sep = sep or ' '
    return isplitif(iterable, lambda s: s == sep)

def safe_get(l, idx, default=None):
    if l == None: return default
    try:
        return l[idx]
    except IndexError:
        return default

def safe_get2(l, x, y):
    return safe_get(safe_get(l, x), y)

class BjamComment:
    def __init__(self, s):
        self.data= s

    def __str__(self):
        return self.data

class BjamCommand:
    def __init__(self, s):
        if s[-1] == ';' or s[-1] == ']':
            self.data = s[0:-1]
        else:
            self.data = s

    def __str__(self):
        return " ".join(self.data)

    def name(self):
        return self.data[0]

    def drop_commands(self):
        skip = False
        for x in self.data:
            if x == '[': skip = True
            if not skip: yield x
            if x == ']': skip = False


    def args(self):
        for x in isplit(self.drop_commands(), ':'):
            yield x

    def commands(self):
        subcommands = itertools.dropwhile(lambda s: s != '[', self.data)
        for x in isplitif(subcommands, lambda s: s == '[' or s == ']'):
            if len(x) > 1:
                yield BjamCommand(x)

class BjamScope:
    def __init__(self, s):
        self.data = s

    def __str__(self):
        return " ".join(self.data)

def lex_bjam_lines(lines):
    for line in lines:
        sline = line.strip()
        if sline == '' or sline.startswith('#'):
            yield sline
        else:
            for word in take_until(sline, '#').split():
                yield word

def parse_bjam_lines(lines):
    x = []
    for word in lex_bjam_lines(lines):
        if word == '' or word.startswith('#'):
            yield BjamComment(word)
        else:
            x.append(word)
            if word == ';':
                yield BjamCommand(x)
                x = []
            if word == '{' or word == '}':
                yield BjamScope(x)
                x = []

def parse_bjam_options(words):
    result = {}
    for word in ''.join(words or []).split('<'):
        # print word
        if '>' in word:
            k, v = word.replace(':', '').strip().split('>')
            result[k.strip()] = v.strip()
    return result

def test_name_idx(rule):
    if rule.startswith('run'): return 4
    else: return 2

def test_options_idx(rule):
    if rule.startswith('run'): return 3
    else: return 1

class Test:
    def __init__(self):
        self.type = None
        self.source = None
        self.name = None
        self.options = {}

    def set(self, cmd):
        data = list(cmd.args())
        rule = list(data[0])
        self.type = rule[0].strip()
        # TODO: Make this sources
        self.source = rule[1]
        self.name = safe_get2(data, test_name_idx(self.type), 0)
        self.options = parse_bjam_options(safe_get(data, test_options_idx(self.type)))


    def out(self):
        if self.type != None:
            self.compute_name()
            self.bcm_test()
            self.set_options()

    def compute_name(self):
        if self.name == None or self.name.strip() == '':
            if '.' in self.source:
                i = self.source.rindex('.')
                self.name = self.source[0:i].replace('/', '_').replace('.', '_')
            else:
                self.name = self.source

    def bcm_test(self):
        will_fail = 'fail' in self.type
        compile_only = 'compile' in self.type or 'link' in self.type
        command = "NAME {} SOURCES {}".format(self.name, self.source)
        if compile_only: command = command + " COMPILE_ONLY"
        if will_fail: command = command + " WILL_FAIL"
        result = "bcm_test({})".format(command)
        print result

    def set_property(self, prop, value):
        result = "set_target_properties({} PROPERTIES {} {})".format(self.name, prop, value)
        print result

    def add_define(self, x):
        result = "target_compile_definitions({} PUBLIC {})".format(self.name, x)
        print result

    def set_options(self):
        for option in self.options:
            if option == 'rtti':
                self.set_property('CXX_RTTI', self.options[option])
            if option == 'exception-handling':
                self.set_property('CXX_EXCEPTIONS', self.options[option])
            if option == 'define':
                self.add_define(self.options[option])



test_rules = ['run', 'run-fail', 'compile', 'compile-fail', 'link', 'link-fail']

f = sys.argv[1]
for obj in parse_bjam_lines(open(f).readlines()):
    # print type(obj)
    if isinstance(obj, BjamComment):
        print obj
    elif isinstance(obj, BjamCommand):
        for cmd in [obj]+list(obj.commands()):
            if cmd.name() in test_rules:
                t = Test()
                t.set(cmd)
                t.out()
            elif cmd.name() == 'lib':
                rule = list(cmd.args())
                if len(rule) > 1:
                    name = rule[0][1]
                    sources = " ".join(rule[1])
                    print "add_library({} STATIC {})".format(name, sources)
                    print "bcm_mark_as_test({})".format(name)
