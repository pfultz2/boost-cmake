#!/usr/bin/env python

import re
import sys
import os
import argparse
import shutil
import pystache
import json

def auto_list(x):
    if isinstance(x, list): return x
    else: return [x]

def ls_dir(p):
    return [f for f in os.listdir(p) if os.path.isdir(os.path.join(p, f))]

def ls_files(p):
    return [f for f in os.listdir(p) if os.path.isfile(os.path.join(p, f))]

def scan_files(d):
    if os.path.exists(d):
        for root, dirs, files in os.walk(d):
            for file in files:
                fn = os.path.relpath(os.path.join( root, file ), d)
                yield fn

def scan_dirs(d):
    if os.path.exists(d):
        for root, dirs, files in os.walk(d):
            for file in dirs:
                fn = os.path.relpath(os.path.join( root, file ), d)
                yield fn

def read_includes(f):
    for line in open(f).readlines():
        m = re.match( '[ \t]*#[ \t]*include[ \t]*["<](boost/[^">]*)[">]', line )
        if m: yield m.group( 1 )

class Boost:
    def __init__(self, d):
        self.root = d
        self.lib_dir = os.path.join(self.root, 'libs')
        self.header_index = {}
        self.create_index()

    def modules(self):
        for d in scan_dirs(self.lib_dir):
            if not 'include' in d and not 'qtcreator' in d and os.path.exists(os.path.join(self.lib_dir, d, 'include')):
                if not 'metaparse/tools' in d and not 'mpl/preprocessed' in d:
                    yield d 

    def module_path(self, *args):
        return os.path.join(self.lib_dir, *args)

    def create_index(self):
        for m in self.modules():
            for f in scan_files(self.module_path(m, 'include')):
                if f.endswith(('.hpp', '.h')):
                    self.header_index[f] = m

    def get_deps(self, m):
        result = set()
        for dd in [self.module_path(m, 'include'), self.module_path(m, 'src')]:
            for f in scan_files(dd):
                if f.endswith(('.hpp', '.h', '.cpp', '.ipp')):
                    for inc in read_includes(os.path.join(dd, f)):
                        if inc.endswith(('.hpp', '.h')):
                            if inc in self.header_index:
                                result.add(self.header_index[inc])
                            else:
                                print "Missing header:", inc
        if m in result: result.remove(m)
        return result

    def get_sources(self, m, exclude=[]):
        if os.path.exists(self.module_path(m, 'src')):
            return [f for f in ls_files(self.module_path(m, 'src')) if f.endswith('.cpp') and not f in exclude]
        else:
            return []

parser = argparse.ArgumentParser()
parser.add_argument('-b', '--boost')
parser.add_argument('-t', '--template')
args = parser.parse_args()

boost_dir = args.boost + '-out'
print 'Copying boost tree ...'
shutil.copytree(args.boost, boost_dir, ignore=shutil.ignore_patterns('.git', 'CMakeLists.txt'))
boost = Boost(boost_dir)

print "Generate cmake ..."
exclude = ['stacktrace', 'context', 'mpi', 'fiber', 'graph_parallel', 'python']
exclude_src = ['zlib.cpp', 'bzip2.cpp', 'dump_avx2.cpp', 'dump_ssse3.cpp']
for m in boost.modules():
    if m in exclude:
        print 'Skipping module:', m
    else:
        deps = [x for x in boost.get_deps(m) if not x in exclude]
        sources = boost.get_sources(m, exclude=exclude_src)
        header_only = len(sources) == 0
        data = {
            'name': m.replace('/', '_'),
            'deps': [{'dep': x.replace('/', '_')} for x in deps],
            'sources': [{'source': x.replace('/', '_')} for x in sources],
            'library_type': 'INTERFACE' if header_only else '',
            'public_type': 'INTERFACE' if header_only else 'PUBLIC',
        }
        for f in scan_files(args.template):
            content = open(os.path.join(args.template, f)).read()
            open(boost.module_path(m, f), 'w').write(pystache.render(content, data))

