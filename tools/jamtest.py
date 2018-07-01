import sys
import re

class Test:
    def __init__(self):
        self.type = None
        self.source = None
        self.name = None
        self.options = {}

    def out(self):
        if self.type != None:
            self.compute_name()
            self.bcm_test()
            self.set_options()

    def compute_name(self):
        if self.name == None:
            i = self.source.index('.')
            self.name = self.source[0:i].replace('/', '_')

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

    def set_options(self):
        for option in self.options:
            if option == 'rtti':
                self.set_property('CXX_RTTI', self.options[option])
            if option == 'exception-handling':
                self.set_property('CXX_EXCEPTIONS', self.options[option])
            if option == 'define':
                self.add_define(self.options[option])



test_rules = ['run', 'run-fail', 'compile', 'compile-fail', 'link', 'link-fail']
def parse(words):
    result = []
    x = []
    start = False
    for word in words:
        if word in test_rules:
            start = True
        if start:
            if word in [':', ';', '[', ']']:
                result.append(x)
                x = []
            else:
                x.append(word)
    if len(x) > 0: result.append(x)
    return result

def parse_bjam_options(words):
    result = {}
    for word in words or []:
        if word.startswith('<'):
            index = word.index('>')
            key = word[1:index]
            value = word[index+1:]
            result[key] = value
    return result

def safe_get(l, idx, default=None):
    if l == None: return default
    try:
        return l[idx]
    except IndexError:
        return default

def safe_get2(l, x, y):
    return safe_get(safe_get(l, x), y)

f = sys.argv[1]
for line in open(f).readlines():
    if line.strip() == '' or line.strip().startswith("#"):
        print line.strip()
    else:
        try:
            rule = parse(line.split())
            if len(rule) > 0:
                t = Test()
                t.type = safe_get2(rule, 0, 0)
                t.source = safe_get2(rule, 0, 1)
                t.name = safe_get2(rule, 4, 0)
                t.options = parse_bjam_options(safe_get(rule, 3))
                t.out()
        except:
            pass
