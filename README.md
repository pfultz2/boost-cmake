Boost cmake generation
======================

This will generate cmake files using a template. This can be ran with:

    python generate.py --boost=<path-to-boost> --template=<path-to-template-dir>

This requires `pystache` to be installed:

    pip install pystache

A template is provided that generates cmake following Daniel Pfeifer's Effective CMake:

    python generate.py --boost=<path-to-boost> --template=effective

A template is just a set of files processed as mustache templates, and then placed in each boost module. At the end, you can copy the `root.cmake` file to the top-level boost directory to build all of boost:

    cp root.cmake <path-to-boost>/CMakeLists.txt

