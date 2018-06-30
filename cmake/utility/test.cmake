# Copyright David Abrahams 2003.

# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

# For more information, see http://www.boost.org/

# bring in rules for testing


bcm_test(NAME base_from_member_test SOURCES base_from_member_test.cpp)
bcm_test(NAME base_from_member_ref_test SOURCES base_from_member_ref_test.cpp)

bcm_test(NAME binary_test SOURCES binary_test.cpp)

# Disabled because the includes is broken
# bcm_test(NAME call_traits_test SOURCES call_traits_test.cpp)

bcm_test(NAME compressed_pair_test SOURCES compressed_pair_test.cpp)

bcm_test(NAME iterators_test SOURCES iterators_test.cpp)

bcm_test(NAME operators_test SOURCES operators_test.cpp)

bcm_test(NAME result_of_test SOURCES result_of_test.cpp COMPILE_ONLY)

# compile-fail string_ref_from_rvalue.cpp ;
bcm_test(NAME string_ref_test1 SOURCES string_ref_test1.cpp)
bcm_test(NAME string_ref_test2 SOURCES string_ref_test2.cpp)
bcm_test(NAME string_ref_test_io SOURCES string_ref_test_io.cpp)
# compile-fail string_view_from_rvalue.cpp ;
bcm_test(NAME string_view_constexpr_test1 SOURCES string_view_constexpr_test1.cpp COMPILE_ONLY)
bcm_test(NAME string_view_test1 SOURCES string_view_test1.cpp)
bcm_test(NAME string_view_test2 SOURCES string_view_test2.cpp)
bcm_test(NAME string_view_test_io SOURCES string_view_test_io.cpp)

bcm_test(NAME value_init_test SOURCES value_init_test.cpp)
bcm_test(NAME value_init_workaround_test SOURCES value_init_workaround_test.cpp)
bcm_test(NAME initialized_test SOURCES initialized_test.cpp)
bcm_test(NAME value_init_test_fail1 SOURCES value_init_test_fail1.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME value_init_test_fail2 SOURCES value_init_test_fail2.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME value_init_test_fail3 SOURCES value_init_test_fail3.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME initialized_test_fail1 SOURCES initialized_test_fail1.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME initialized_test_fail2 SOURCES initialized_test_fail2.cpp COMPILE_ONLY WILL_FAIL)

