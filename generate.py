#!/usr/bin/env python

import re
import sys
import os
import argparse
import shutil
import pystache

def ls_dir(p):
    return [f for f in os.listdir(p) if os.path.isdir(os.path.join(p, f))]

def ls_files(p):
    return [f for f in os.listdir(p) if os.path.isfile(os.path.join(p, f))]

def scan_dir(d):
    if os.path.exists(d):
        for root, dirs, files in os.walk(d):
            for file in files:
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
        return ls_dir(self.lib_dir)

    def module_path(self, *args):
        return os.path.join(self.lib_dir, *args)

    def create_index(self):
        for m in self.modules():
            for f in scan_dir(self.module_path(m, 'include')):
                if f.endswith(('.hpp', '.h')):
                    self.header_index[f] = m

    def get_deps(self, m):
        result = set()
        for dd in [self.module_path(m, 'include'), self.module_path(m, 'src')]:
            for f in scan_dir(dd):
                if f.endswith(('.hpp', '.h', '.cpp', '.ipp')):
                    for inc in read_includes(os.path.join(dd, f)):
                        if inc.endswith(('.hpp', '.h')):
                            result.add(self.header_index[inc])
        if m in result: result.remove(m)
        return result

    def get_sources(self, m):
        if os.path.exists(self.module_path(m, 'src')):
            return ls_files(self.module_path(m, 'src'))
        else:
            return []

parser = argparse.ArgumentParser()
parser.add_argument('-b', '--boost')
parser.add_argument('-t', '--template')
args = parser.parse_args()

boost_dir = args.boost + '-out'
print 'Copying boost tree ...'
shutil.copytree(args.boost, boost_dir)

boost = Boost(boost_dir)

for m in boost.modules():
    deps = boost.get_deps(m)
    sources = boost.get_sources(m)
    header_only = len(sources) == 0
    data = {
        'name': m,
        'deps': [{'dep': x} for x in deps],
        'sources': [{'source': x} for x in sources],
        'library_type': 'INTERFACE' if header_only else '',
        'public_type': 'INTERFACE' if header_only else 'PUBLIC',
    }
    for f in scan_dir(args.template):
        content = open(os.path.join(args.template, f)).read()
        open(boost.module_path(m, f)).write(pystache.render(content, data))


# boost = Boost(sys.argv[1])
# boost.get_deps(sys.argv[2])

# for dep in boost.get_deps(sys.argv[2]):
#     print dep

