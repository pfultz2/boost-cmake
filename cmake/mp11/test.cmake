#  Boost.Mp11 Library Test Jamfile
#
#  Copyright 2015-2017 Peter Dimov
#
#  Distributed under the Boost Software License, Version 1.0.
#  See accompanying file LICENSE_1_0.txt or copy at
#  http://www.boost.org/LICENSE_1_0.txt



# include-only
bcm_test(NAME boost_mp11_test SOURCES mp11.cpp COMPILE_ONLY)

# list
bcm_test(NAME boost_mp11_mp_size SOURCES mp_size.cpp)
bcm_test(NAME boost_mp11_mp_empty SOURCES mp_empty.cpp)
bcm_test(NAME boost_mp11_mp_front SOURCES mp_front.cpp)
bcm_test(NAME boost_mp11_mp_pop_front SOURCES mp_pop_front.cpp)
bcm_test(NAME boost_mp11_mp_second SOURCES mp_second.cpp)
bcm_test(NAME boost_mp11_mp_third SOURCES mp_third.cpp)
bcm_test(NAME boost_mp11_mp_push_front SOURCES mp_push_front.cpp)
bcm_test(NAME boost_mp11_mp_push_back SOURCES mp_push_back.cpp)
bcm_test(NAME boost_mp11_mp_rename SOURCES mp_rename.cpp)
bcm_test(NAME boost_mp11_mp_append SOURCES mp_append.cpp)
bcm_test(NAME boost_mp11_mp_append_2 SOURCES mp_append_2.cpp)
bcm_test(NAME boost_mp11_mp_replace_front SOURCES mp_replace_front.cpp)
bcm_test(NAME boost_mp11_mp_replace_second SOURCES mp_replace_second.cpp)
bcm_test(NAME boost_mp11_mp_replace_third SOURCES mp_replace_third.cpp)
bcm_test(NAME boost_mp11_mp_apply_q SOURCES mp_apply_q.cpp)
bcm_test(NAME boost_mp11_mp_is_list SOURCES mp_is_list.cpp)
bcm_test(NAME boost_mp11_mp_list_c SOURCES mp_list_c.cpp)

# algorithm
bcm_test(NAME boost_mp11_mp_assign SOURCES mp_assign.cpp)
bcm_test(NAME boost_mp11_mp_clear SOURCES mp_clear.cpp)
bcm_test(NAME boost_mp11_mp_transform SOURCES mp_transform.cpp)
bcm_test(NAME boost_mp11_mp_transform_q SOURCES mp_transform_q.cpp)
bcm_test(NAME boost_mp11_mp_transform_sf SOURCES mp_transform_sf.cpp)
bcm_test(NAME boost_mp11_mp_transform_if SOURCES mp_transform_if.cpp)
bcm_test(NAME boost_mp11_mp_transform_if_q SOURCES mp_transform_if_q.cpp)
bcm_test(NAME boost_mp11_mp_fill SOURCES mp_fill.cpp)
bcm_test(NAME boost_mp11_mp_count SOURCES mp_count.cpp)
bcm_test(NAME boost_mp11_mp_count_if SOURCES mp_count_if.cpp)
bcm_test(NAME boost_mp11_mp_count_if_q SOURCES mp_count_if_q.cpp)
bcm_test(NAME boost_mp11_mp_contains SOURCES mp_contains.cpp)
bcm_test(NAME boost_mp11_mp_repeat SOURCES mp_repeat.cpp)
bcm_test(NAME boost_mp11_mp_product SOURCES mp_product.cpp)
bcm_test(NAME boost_mp11_mp_drop SOURCES mp_drop.cpp)
bcm_test(NAME boost_mp11_mp_iota SOURCES mp_iota.cpp)
bcm_test(NAME boost_mp11_mp_at SOURCES mp_at.cpp)
bcm_test(NAME boost_mp11_mp_at_sf SOURCES mp_at_sf.cpp)
bcm_test(NAME boost_mp11_mp_take SOURCES mp_take.cpp)
bcm_test(NAME boost_mp11_mp_replace SOURCES mp_replace.cpp)
bcm_test(NAME boost_mp11_mp_replace_if SOURCES mp_replace_if.cpp)
bcm_test(NAME boost_mp11_mp_replace_if_q SOURCES mp_replace_if_q.cpp)
bcm_test(NAME boost_mp11_mp_copy_if SOURCES mp_copy_if.cpp)
bcm_test(NAME boost_mp11_mp_copy_if_q SOURCES mp_copy_if_q.cpp)
bcm_test(NAME boost_mp11_mp_remove SOURCES mp_remove.cpp)
bcm_test(NAME boost_mp11_mp_remove_if SOURCES mp_remove_if.cpp)
bcm_test(NAME boost_mp11_mp_remove_if_q SOURCES mp_remove_if_q.cpp)
bcm_test(NAME boost_mp11_mp_partition SOURCES mp_partition.cpp)
bcm_test(NAME boost_mp11_mp_partition_q SOURCES mp_partition_q.cpp)
bcm_test(NAME boost_mp11_mp_sort SOURCES mp_sort.cpp)
bcm_test(NAME boost_mp11_mp_sort_q SOURCES mp_sort_q.cpp)
bcm_test(NAME boost_mp11_mp_find SOURCES mp_find.cpp)
bcm_test(NAME boost_mp11_mp_find_if SOURCES mp_find_if.cpp)
bcm_test(NAME boost_mp11_mp_find_if_q SOURCES mp_find_if_q.cpp)
bcm_test(NAME boost_mp11_mp_reverse SOURCES mp_reverse.cpp)
bcm_test(NAME boost_mp11_mp_fold SOURCES mp_fold.cpp)
bcm_test(NAME boost_mp11_mp_fold_q SOURCES mp_fold_q.cpp)
bcm_test(NAME boost_mp11_mp_reverse_fold SOURCES mp_reverse_fold.cpp)
bcm_test(NAME boost_mp11_mp_reverse_fold_q SOURCES mp_reverse_fold_q.cpp)
bcm_test(NAME boost_mp11_mp_unique SOURCES mp_unique.cpp)
bcm_test(NAME boost_mp11_mp_all_of SOURCES mp_all_of.cpp)
bcm_test(NAME boost_mp11_mp_all_of_q SOURCES mp_all_of_q.cpp)
bcm_test(NAME boost_mp11_mp_any_of SOURCES mp_any_of.cpp)
bcm_test(NAME boost_mp11_mp_any_of_q SOURCES mp_any_of_q.cpp)
bcm_test(NAME boost_mp11_mp_none_of SOURCES mp_none_of.cpp)
bcm_test(NAME boost_mp11_mp_none_of_q SOURCES mp_none_of_q.cpp)
bcm_test(NAME boost_mp11_mp_replace_at SOURCES mp_replace_at.cpp)
bcm_test(NAME boost_mp11_mp_replace_at_c SOURCES mp_replace_at_c.cpp)
bcm_test(NAME boost_mp11_mp_for_each SOURCES mp_for_each.cpp)
bcm_test(NAME boost_mp11_mp_insert SOURCES mp_insert.cpp)
bcm_test(NAME boost_mp11_mp_erase SOURCES mp_erase.cpp)
bcm_test(NAME boost_mp11_mp_with_index SOURCES mp_with_index.cpp)
bcm_test(NAME boost_mp11_mp_with_index_cx SOURCES mp_with_index_cx.cpp)
bcm_test(NAME boost_mp11_mp_from_sequence SOURCES mp_from_sequence.cpp)
bcm_test(NAME boost_mp11_mp_min_element SOURCES mp_min_element.cpp)
bcm_test(NAME boost_mp11_mp_min_element_q SOURCES mp_min_element_q.cpp)
bcm_test(NAME boost_mp11_mp_max_element SOURCES mp_max_element.cpp)
bcm_test(NAME boost_mp11_mp_max_element_q SOURCES mp_max_element_q.cpp)
bcm_test(NAME boost_mp11_mp_nth_element SOURCES mp_nth_element.cpp)
bcm_test(NAME boost_mp11_mp_nth_element_q SOURCES mp_nth_element_q.cpp)

# integral
bcm_test(NAME boost_mp11_integral SOURCES integral.cpp)

# utility
bcm_test(NAME boost_mp11_mp_identity SOURCES mp_identity.cpp)
bcm_test(NAME boost_mp11_mp_inherit SOURCES mp_inherit.cpp)
bcm_test(NAME boost_mp11_mp_if SOURCES mp_if.cpp)
bcm_test(NAME boost_mp11_mp_if_sf SOURCES mp_if_sf.cpp)
bcm_test(NAME boost_mp11_mp_eval_if SOURCES mp_eval_if.cpp)
bcm_test(NAME boost_mp11_mp_eval_if_sf SOURCES mp_eval_if_sf.cpp)
bcm_test(NAME boost_mp11_mp_valid SOURCES mp_valid.cpp)
bcm_test(NAME boost_mp11_mp_defer SOURCES mp_defer.cpp)
bcm_test(NAME boost_mp11_mp_quote SOURCES mp_quote.cpp)
bcm_test(NAME boost_mp11_mp_invoke SOURCES mp_invoke.cpp)
bcm_test(NAME boost_mp11_mp_invoke_sf SOURCES mp_invoke_sf.cpp)
bcm_test(NAME boost_mp11_mp_quote_trait SOURCES mp_quote_trait.cpp)
bcm_test(NAME boost_mp11_mp_cond SOURCES mp_cond.cpp)
bcm_test(NAME boost_mp11_mp_cond_sf SOURCES mp_cond_sf.cpp)

# integer_sequence
bcm_test(NAME boost_mp11_integer_sequence SOURCES integer_sequence.cpp)

# tuple
bcm_test(NAME boost_mp11_tuple_for_each SOURCES tuple_for_each.cpp)
bcm_test(NAME boost_mp11_tuple_for_each_cx SOURCES tuple_for_each_cx.cpp COMPILE_ONLY)
bcm_test(NAME boost_mp11_tuple_apply SOURCES tuple_apply.cpp)
bcm_test(NAME boost_mp11_tuple_apply_cx SOURCES tuple_apply_cx.cpp COMPILE_ONLY)
bcm_test(NAME boost_mp11_construct_from_tuple SOURCES construct_from_tuple.cpp)
bcm_test(NAME boost_mp11_construct_from_tuple_cx SOURCES construct_from_tuple_cx.cpp COMPILE_ONLY)

# set
bcm_test(NAME boost_mp11_mp_set_contains SOURCES mp_set_contains.cpp)
bcm_test(NAME boost_mp11_mp_set_push_back SOURCES mp_set_push_back.cpp)
bcm_test(NAME boost_mp11_mp_set_push_front SOURCES mp_set_push_front.cpp)
bcm_test(NAME boost_mp11_mp_is_set SOURCES mp_is_set.cpp)

# function
bcm_test(NAME boost_mp11_mp_all SOURCES mp_all.cpp)
bcm_test(NAME boost_mp11_mp_and SOURCES mp_and.cpp)
bcm_test(NAME boost_mp11_mp_any SOURCES mp_any.cpp)
bcm_test(NAME boost_mp11_mp_or SOURCES mp_or.cpp)
bcm_test(NAME boost_mp11_mp_same SOURCES mp_same.cpp)
bcm_test(NAME boost_mp11_mp_plus SOURCES mp_plus.cpp)
bcm_test(NAME boost_mp11_mp_less SOURCES mp_less.cpp)
bcm_test(NAME boost_mp11_mp_min SOURCES mp_min.cpp)
bcm_test(NAME boost_mp11_mp_max SOURCES mp_max.cpp)

# map
bcm_test(NAME boost_mp11_mp_map_find SOURCES mp_map_find.cpp)
bcm_test(NAME boost_mp11_mp_map_contains SOURCES mp_map_contains.cpp)
bcm_test(NAME boost_mp11_mp_map_insert SOURCES mp_map_insert.cpp)
bcm_test(NAME boost_mp11_mp_map_replace SOURCES mp_map_replace.cpp)
bcm_test(NAME boost_mp11_mp_map_erase SOURCES mp_map_erase.cpp)
bcm_test(NAME boost_mp11_mp_map_update SOURCES mp_map_update.cpp)
bcm_test(NAME boost_mp11_mp_map_update_q SOURCES mp_map_update_q.cpp)
bcm_test(NAME boost_mp11_mp_map_keys SOURCES mp_map_keys.cpp)
bcm_test(NAME boost_mp11_mp_is_map SOURCES mp_is_map.cpp)

# bind
bcm_test(NAME boost_mp11_mp_bind SOURCES mp_bind.cpp)
bcm_test(NAME boost_mp11_mp_bind_q SOURCES mp_bind_q.cpp)
bcm_test(NAME boost_mp11_mp_bind_front SOURCES mp_bind_front.cpp)
bcm_test(NAME boost_mp11_mp_bind_back SOURCES mp_bind_back.cpp)

# mpl
bcm_test(NAME boost_mp11_mpl SOURCES mpl.cpp)

# quick (for CI)
