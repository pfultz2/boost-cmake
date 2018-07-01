# Boost.MultiIndex tests Jamfile
#
# Copyright 2003-2015 Joaquin M Lopez Munoz.
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE_1_0.txt or copy at
# http://www.boost.org/LICENSE_1_0.txt)
#
# See http://www.boost.org/libs/multi_index for library home page.


# Windows Vista UAC has an heuristic by which executable files whose name
# contains any of the words "install", "setup", "update", etc. are assumed
# to be installation packages needing administrative rights, which causes
# the system to bring up a window asking for execution confirmation by the
# user, thus interferring in the unattended bjam process.
# Problem bypassed by changing the EXE names containing a taboo word.
# Thanks to Rene Rivera for guidance on the use of the <tag> feature.

bcm_test(NAME boost_multi_index_test_basic SOURCES test_basic.cpp test_basic_main.cpp)
bcm_test(NAME boost_multi_index_test_capacity SOURCES test_capacity.cpp test_capacity_main.cpp)
bcm_test(NAME boost_multi_index_test_comparison SOURCES test_comparison.cpp test_comparison_main.cpp)
bcm_test(NAME boost_multi_index_test_composite_key SOURCES test_composite_key.cpp test_composite_key_main.cpp)
bcm_test(NAME boost_multi_index_test_conv_iterators SOURCES test_conv_iterators.cpp test_conv_iterators_main.cpp)
bcm_test(NAME boost_multi_index_test_copy_assignment SOURCES test_copy_assignment.cpp test_copy_assignment_main.cpp)
bcm_test(NAME boost_multi_index_test_hash_ops SOURCES test_hash_ops.cpp test_hash_ops_main.cpp)
bcm_test(NAME boost_multi_index_test_iterators SOURCES test_iterators.cpp test_iterators_main.cpp)
bcm_test(NAME boost_multi_index_test_key_extractors SOURCES test_key_extractors.cpp test_key_extractors_main.cpp)
bcm_test(NAME boost_multi_index_test_list_ops SOURCES test_list_ops.cpp test_list_ops_main.cpp)
bcm_test(NAME boost_multi_index_test_modifiers SOURCES test_modifiers.cpp test_modifiers_main.cpp)
bcm_test(NAME boost_multi_index_test_mpl_ops SOURCES test_mpl_ops.cpp test_mpl_ops_main.cpp)
bcm_test(NAME boost_multi_index_test_observers SOURCES test_observers.cpp test_observers_main.cpp)
bcm_test(NAME boost_multi_index_test_projection SOURCES test_projection.cpp test_projection_main.cpp)
bcm_test(NAME boost_multi_index_test_range SOURCES test_range.cpp test_range_main.cpp)
bcm_test(NAME boost_multi_index_test_rank_ops SOURCES test_rank_ops.cpp test_rank_ops_main.cpp)
bcm_test(NAME boost_multi_index_test_rearrange SOURCES test_rearrange.cpp test_rearrange_main.cpp)
bcm_test(NAME boost_multi_index_test_safe_mode SOURCES test_safe_mode.cpp test_safe_mode_main.cpp)
bcm_test(NAME boost_multi_index_test_serialization SOURCES test_serialization.cpp test_serialization1.cpp test_serialization2.cpp test_serialization3.cpp test_serialization_main.cpp)
bcm_test(NAME boost_multi_index_test_set_ops SOURCES test_set_ops.cpp test_set_ops_main.cpp)
bcm_test(NAME boost_multi_index_test_special_set_ops SOURCES test_special_set_ops.cpp test_special_set_ops_main.cpp)
bcm_test(NAME boost_multi_index_test_update SOURCES test_update.cpp test_update_main.cpp)
