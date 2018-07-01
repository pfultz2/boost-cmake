# Copyright 2016-2017 Joaquin M Lopez Munoz.
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE_1_0.txt or copy at
# http://www.boost.org/LICENSE_1_0.txt)
#
# See http://www.boost.org/libs/poly_collection for library home page.


bcm_test(NAME test_algorithm SOURCES test_algorithm.cpp test_algorithm1.cpp test_algorithm2.cpp test_algorithm3.cpp test_algorithm_main.cpp)
bcm_test(NAME test_capacity SOURCES test_capacity.cpp test_capacity_main.cpp)
bcm_test(NAME test_comparison SOURCES test_comparison.cpp test_comparison_main.cpp)
bcm_test(NAME test_construction SOURCES test_construction.cpp test_construction_main.cpp)
bcm_test(NAME test_emplacement SOURCES test_emplacement.cpp test_emplacement_main.cpp)
bcm_test(NAME test_erasure SOURCES test_erasure.cpp test_erasure_main.cpp)
bcm_test(NAME test_insertion SOURCES test_insertion.cpp test_insertion_main.cpp)
bcm_test(NAME test_iterators SOURCES test_iterators.cpp test_iterators_main.cpp)
bcm_test(NAME test_registration SOURCES test_registration.cpp test_registration_main.cpp)
