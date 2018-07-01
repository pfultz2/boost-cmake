#  Copyright Vladimur Prus 2005. Use, modification and
#  distribution is subject to the Boost Software License, Version
#  1.0. (See accompanying file LICENSE_1_0.txt or copy at
#  http://www.boost.org/LICENSE_1_0.txt)
#
# For more information, see http://www.boost.org/libs/any
#

bcm_test(NAME any_test SOURCES any_test.cpp)
bcm_test(NAME any_test_no_rtti SOURCES any_test.cpp)
set_target_properties(any_test_no_rtti PROPERTIES CXX_RTTI off)
bcm_test(NAME any_test_rv SOURCES any_test_rv.cpp)
bcm_test(NAME any_test_rv_no_rtti SOURCES any_test_rv.cpp)
set_target_properties(any_test_rv_no_rtti PROPERTIES CXX_RTTI off)
bcm_test(NAME any_test_mplif SOURCES any_test_mplif.cpp)
bcm_test(NAME any_cast_cv_failed SOURCES any_cast_cv_failed.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME any_test_temporary_to_ref_failed SOURCES any_test_temporary_to_ref_failed.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME any_test_cv_to_rv_failed SOURCES any_test_cv_to_rv_failed.cpp COMPILE_ONLY WILL_FAIL)


