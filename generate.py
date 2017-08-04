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

def mkdir(p):
    if not os.path.exists(p): os.makedirs(p)
    return p

def write_to(file, content):
    mkdir(os.path.dirname(file))
    open(file, 'w').write(content)

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

    def has_sublibs(self, d):
        # return os.path.exists(self.module_path(d, 'sublibs'))
        return d in ['numeric']

    def traverse_libs(self, root):
        for d in ls_dir(root):
            if not d in ['doc']:
                if self.has_sublibs(d):
                    for x in self.traverse_libs(self.module_path(d)):
                        yield os.path.join(d, x)
                else: yield d

    def modules(self):
        for x in self.traverse_libs(self.lib_dir):
            yield x 

    def module_path(self, *args):
        return os.path.join(self.lib_dir, *args)

    def create_index(self):
        for m in self.modules():
            for f in scan_files(self.module_path(m, 'include')):
                if f.endswith(('.hpp', '.h')):
                    self.header_index[f] = m

    def get_deps(self, m, dirs):
        result = set()
        for dd in [self.module_path(m, x) for x in dirs]:
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

    def get_library_deps(self, m):
        return self.get_deps(m, ['include', 'src'])

    def get_test_deps(self, m):
        return self.get_deps(m, ['test'])

    def get_sources(self, m, exclude=[]):
        if os.path.exists(self.module_path(m, 'src')):
            return [f for f in ls_files(self.module_path(m, 'src')) if f.endswith('.cpp') and not f in exclude]
        else:
            return []

def read_additional_deps(f):
    if os.path.exists(f):
        for line in open(f).readlines():
            yield line.split()

def read_file(f):
    if os.path.exists(f):
        return open(f).read()
    else:
        return ''

parser = argparse.ArgumentParser()
parser.add_argument('-b', '--boost')
parser.add_argument('-c', '--bcm')
parser.add_argument('-t', '--template')
args = parser.parse_args()

boost_dir = args.boost + '-out'
print 'Copying boost tree ...'
shutil.copytree(args.boost, boost_dir, ignore=shutil.ignore_patterns('.git', 'CMakeLists.txt'))
boost = Boost(boost_dir)

print 'Copying bcm ...'
shutil.copytree(args.bcm, os.path.join(boost_dir, 'bcm'), ignore=shutil.ignore_patterns('.git'))

print "Generate cmake ..."
exclude = ['graph_parallel', 'mpi']
exclude_src = ['zlib.cpp', 'bzip2.cpp', 'dump_avx2.cpp', 'dump_ssse3.cpp', 'windbg_cached.cpp', 'windbg.cpp', 'untested.cpp', 'unsupported.cpp']
for m in boost.modules():
    if m in exclude:
        print 'Skipping module:', m
    else:
        boost_deps = [x.replace('/', '_') for x in boost.get_library_deps(m) if not x in exclude]
        test_deps = [x.replace('/', '_') for x in boost.get_test_deps(m) if not x in exclude]
        additional_cmake = read_file(os.path.join('cmake', m, 'CMakeLists.txt'))
        additional_test = read_file(os.path.join('cmake', m, 'test', 'CMakeLists.txt'))
        sources = boost.get_sources(m, exclude=exclude_src)
        header_only = len(sources) == 0
        data = {
            'name': m.replace('/', '_'),
            'version': '1.64.0',
            'deps': [{'package': 'boost_'+x, 'library': 'boost::'+x} for x in boost_deps],
            'test_deps': [{'package': 'boost_'+x, 'library': 'boost::'+x} for x in test_deps],
            'additional_cmake': additional_cmake,
            'additional_test': additional_test,
            'sources': [{'source': x.replace('/', '_')} for x in sources],
            'library_type': 'INTERFACE' if header_only else '',
            'public_type': 'INTERFACE' if header_only else 'PUBLIC',
            'if_build': not header_only,
        }
        for f in scan_files(args.template):
            content = open(os.path.join(args.template, f)).read()
            write_to(boost.module_path(m, f), pystache.render(content, data))
for f in scan_files('cmake'):
    if not f.endswith('CMakeLists.txt'):
        shutil.copy(os.path.join('cmake', f), os.path.join(boost.lib_dir, f))

