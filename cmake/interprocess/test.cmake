# Boost Interprocess Library Test Jamfile

#  (C) Copyright Ion Gaztanaga 2006.
# Use, modification and distribution are subject to the
# Boost Software License, Version 1.0. (See accompanying file
# LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

# Adapted from John Maddock's TR1 Jamfile.v2
# Copyright John Maddock 2005.
# Use, modification and distribution are subject to the
# Boost Software License, Version 1.0. (See accompanying file
# LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

# this rule enumerates through all the sources and invokes
# the run rule for each source, the result is a list of all
# the run rules, which we can pass on to the test_suite rule:

file(GLOB TEST_FILES *.cpp)
foreach(FILEB ${TEST_FILES})
    get_filename_component(NAME ${FILEB} NAME_WE)
    bcm_test(NAME interprocess-${NAME} SOURCES ${FILEB})
endforeach()

# rule test_all
# {
#    local all_rules = ;

#    for local fileb in [ glob *.cpp ]
#    {
#       all_rules += [ run $(fileb)
#       :  # additional args
#       :  # test-files
#       :  # requirements
#         <toolset>acc:<linkflags>-lrt
#         <toolset>acc-pa_risc:<linkflags>-lrt
#         <toolset>gcc,<target-os>windows:<linkflags>"-lole32 -loleaut32 -lpsapi -ladvapi32"
#         <target-os>hpux,<toolset>gcc:<linkflags>"-Wl,+as,mpas"
#         <target-os>windows,<toolset>clang:<linkflags>"-lole32 -loleaut32 -lpsapi -ladvapi32"
#         <target-os>linux:<linkflags>"-lrt"
#       ] ;
#    }

#    return $(all_rules) ;
# }

