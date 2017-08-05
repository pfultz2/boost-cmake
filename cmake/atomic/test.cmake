#  Boost.Atomic Library test Jamfile
#
#  Copyright (c) 2011 Helge Bahmann
#  Copyright (c) 2012 Tim Blechmann
#
#  Distributed under the Boost Software License, Version 1.0. (See
#  accompanying file LICENSE_1_0.txt or copy at
#  http://www.boost.org/LICENSE_1_0.txt)



bcm_test(NAME native_api SOURCES native_api.cpp)
bcm_test(NAME fallback_api SOURCES fallback_api.cpp)
bcm_test(NAME atomicity SOURCES atomicity.cpp)
bcm_test(NAME ordering SOURCES ordering.cpp)
bcm_test(NAME lockfree SOURCES lockfree.cpp)
