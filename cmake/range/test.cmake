# Boost.Range library
#
#  Copyright Neil Groves 2009
#  Copyright Thorsten Ottosen 2003-2004. Use, modification and
#  distribution is subject to the Boost Software License, Version
#  1.0. (See accompanying file LICENSE_1_0.txt or copy at
#  http://www.boost.org/LICENSE_1_0.txt)
#
# For more information, see http://www.boost.org/libs/range/
#

# bring in rules for testing


# bcm_test(NAME $(name) SOURCES $(name).cpp)

#    [ range-test atl : <include>$(VC71_ROOT)/atlmfc/include ]
#       [ range-test mfc : <include>$(VC71_ROOT)/atlmfc/include ]
bcm_test(NAME range_compile_fail_iterator_range1 SOURCES compile_fail/iterator_range1.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_adjacent_filtered_concept SOURCES compile_fail/adaptor/adjacent_filtered_concept.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_adjacent_filtered_concept2 SOURCES compile_fail/adaptor/adjacent_filtered_concept2.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_adjacent_filtered_concept3 SOURCES compile_fail/adaptor/adjacent_filtered_concept3.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_adjacent_filtered_concept4 SOURCES compile_fail/adaptor/adjacent_filtered_concept4.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_copied_concept SOURCES compile_fail/adaptor/copied_concept.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_copied_concept2 SOURCES compile_fail/adaptor/copied_concept2.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_copied_concept3 SOURCES compile_fail/adaptor/copied_concept3.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_copied_concept4 SOURCES compile_fail/adaptor/copied_concept4.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_reversed_concept SOURCES compile_fail/adaptor/reversed_concept.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_reversed_concept2 SOURCES compile_fail/adaptor/reversed_concept2.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_reversed_concept3 SOURCES compile_fail/adaptor/reversed_concept3.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_reversed_concept4 SOURCES compile_fail/adaptor/reversed_concept4.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_sliced_concept SOURCES compile_fail/adaptor/sliced_concept.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_sliced_concept2 SOURCES compile_fail/adaptor/sliced_concept2.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_sliced_concept3 SOURCES compile_fail/adaptor/sliced_concept3.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_sliced_concept4 SOURCES compile_fail/adaptor/sliced_concept4.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_uniqued_concept SOURCES compile_fail/adaptor/uniqued_concept.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_uniqued_concept2 SOURCES compile_fail/adaptor/uniqued_concept2.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_uniqued_concept3 SOURCES compile_fail/adaptor/uniqued_concept3.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_compile_fail_adaptor_uniqued_concept4 SOURCES compile_fail/adaptor/uniqued_concept4.cpp COMPILE_ONLY WILL_FAIL)
bcm_test(NAME range_adaptor_test_adjacent_filtered SOURCES adaptor_test/adjacent_filtered.cpp)
bcm_test(NAME range_adaptor_test_chained SOURCES adaptor_test/chained.cpp)
bcm_test(NAME range_adaptor_test_copied SOURCES adaptor_test/copied.cpp)
bcm_test(NAME range_adaptor_test_filtered SOURCES adaptor_test/filtered.cpp)
bcm_test(NAME range_adaptor_test_indexed SOURCES adaptor_test/indexed.cpp)
bcm_test(NAME range_adaptor_test_indirected SOURCES adaptor_test/indirected.cpp)
bcm_test(NAME range_adaptor_test_map SOURCES adaptor_test/map.cpp)
bcm_test(NAME range_adaptor_test_replaced SOURCES adaptor_test/replaced.cpp)
bcm_test(NAME range_adaptor_test_replaced_if SOURCES adaptor_test/replaced_if.cpp)
bcm_test(NAME range_adaptor_test_reversed SOURCES adaptor_test/reversed.cpp)
bcm_test(NAME range_adaptor_test_sliced SOURCES adaptor_test/sliced.cpp)
bcm_test(NAME range_adaptor_test_strided SOURCES adaptor_test/strided.cpp)
bcm_test(NAME range_adaptor_test_strided2 SOURCES adaptor_test/strided2.cpp)
bcm_test(NAME range_adaptor_test_ticket_6742_transformed_c4789_warning SOURCES adaptor_test/ticket_6742_transformed_c4789_warning.cpp)
bcm_test(NAME range_adaptor_test_ticket_8676_sliced_transformed SOURCES adaptor_test/ticket_8676_sliced_transformed.cpp)
bcm_test(NAME range_adaptor_test_ticket_9519_strided_reversed SOURCES adaptor_test/ticket_9519_strided_reversed.cpp)
bcm_test(NAME range_adaptor_test_tokenized SOURCES adaptor_test/tokenized.cpp)
bcm_test(NAME range_adaptor_test_transformed SOURCES adaptor_test/transformed.cpp)
bcm_test(NAME range_adaptor_test_type_erased SOURCES adaptor_test/type_erased.cpp)
bcm_test(NAME range_adaptor_test_type_erased_abstract SOURCES adaptor_test/type_erased_abstract.cpp)
bcm_test(NAME range_adaptor_test_type_erased_brackets SOURCES adaptor_test/type_erased_brackets.cpp)
bcm_test(NAME range_adaptor_test_type_erased_mix_values SOURCES adaptor_test/type_erased_mix_values.cpp)
bcm_test(NAME range_adaptor_test_type_erased_tparam_conv SOURCES adaptor_test/type_erased_tparam_conv.cpp)
bcm_test(NAME range_adaptor_test_type_erased_single_pass SOURCES adaptor_test/type_erased_single_pass.cpp)
bcm_test(NAME range_adaptor_test_type_erased_forward SOURCES adaptor_test/type_erased_forward.cpp)
bcm_test(NAME range_adaptor_test_type_erased_bidirectional SOURCES adaptor_test/type_erased_bidirectional.cpp)
bcm_test(NAME range_adaptor_test_type_erased_random_access SOURCES adaptor_test/type_erased_random_access.cpp)
bcm_test(NAME range_adaptor_test_uniqued SOURCES adaptor_test/uniqued.cpp)
bcm_test(NAME range_adaptor_test_adjacent_filtered_example SOURCES adaptor_test/adjacent_filtered_example.cpp)
bcm_test(NAME range_adaptor_test_copied_example SOURCES adaptor_test/copied_example.cpp)
bcm_test(NAME range_adaptor_test_filtered_example SOURCES adaptor_test/filtered_example.cpp)
bcm_test(NAME range_adaptor_test_formatted SOURCES adaptor_test/formatted.cpp)
bcm_test(NAME range_adaptor_test_formatted_example SOURCES adaptor_test/formatted_example.cpp)
bcm_test(NAME range_adaptor_test_indexed_example SOURCES adaptor_test/indexed_example.cpp)
bcm_test(NAME range_adaptor_test_indirected_example SOURCES adaptor_test/indirected_example.cpp)
bcm_test(NAME range_adaptor_test_map_keys_example SOURCES adaptor_test/map_keys_example.cpp)
bcm_test(NAME range_adaptor_test_map_values_example SOURCES adaptor_test/map_values_example.cpp)
bcm_test(NAME range_adaptor_test_replaced_example SOURCES adaptor_test/replaced_example.cpp)
bcm_test(NAME range_adaptor_test_replaced_if_example SOURCES adaptor_test/replaced_if_example.cpp)
bcm_test(NAME range_adaptor_test_reversed_example SOURCES adaptor_test/reversed_example.cpp)
bcm_test(NAME range_adaptor_test_sliced_example SOURCES adaptor_test/sliced_example.cpp)
bcm_test(NAME range_adaptor_test_strided_example SOURCES adaptor_test/strided_example.cpp)
bcm_test(NAME range_adaptor_test_transformed_example SOURCES adaptor_test/transformed_example.cpp)
bcm_test(NAME range_adaptor_test_tokenized_example SOURCES adaptor_test/tokenized_example.cpp)
bcm_test(NAME range_adaptor_test_type_erased_example SOURCES adaptor_test/type_erased_example.cpp)
bcm_test(NAME range_adaptor_test_uniqued_example SOURCES adaptor_test/uniqued_example.cpp)
bcm_test(NAME range_algorithm_test_adjacent_find SOURCES algorithm_test/adjacent_find.cpp)
bcm_test(NAME range_algorithm_test_binary_search SOURCES algorithm_test/binary_search.cpp)
bcm_test(NAME range_algorithm_test_copy SOURCES algorithm_test/copy.cpp)
bcm_test(NAME range_algorithm_test_copy_backward SOURCES algorithm_test/copy_backward.cpp)
bcm_test(NAME range_algorithm_test_count SOURCES algorithm_test/count.cpp)
bcm_test(NAME range_algorithm_test_count_if SOURCES algorithm_test/count_if.cpp)
bcm_test(NAME range_algorithm_test_equal SOURCES algorithm_test/equal.cpp)
bcm_test(NAME range_algorithm_test_equal_range SOURCES algorithm_test/equal_range.cpp)
bcm_test(NAME range_algorithm_test_fill SOURCES algorithm_test/fill.cpp)
bcm_test(NAME range_algorithm_test_find SOURCES algorithm_test/find.cpp)
bcm_test(NAME range_algorithm_test_find_if SOURCES algorithm_test/find_if.cpp)
bcm_test(NAME range_algorithm_test_find_end SOURCES algorithm_test/find_end.cpp)
bcm_test(NAME range_algorithm_test_find_first_of SOURCES algorithm_test/find_first_of.cpp)
bcm_test(NAME range_algorithm_test_for_each SOURCES algorithm_test/for_each.cpp)
bcm_test(NAME range_algorithm_test_generate SOURCES algorithm_test/generate.cpp)
bcm_test(NAME range_algorithm_test_heap SOURCES algorithm_test/heap.cpp)
bcm_test(NAME range_algorithm_test_includes SOURCES algorithm_test/includes.cpp)
bcm_test(NAME range_algorithm_test_inplace_merge SOURCES algorithm_test/inplace_merge.cpp)
bcm_test(NAME range_algorithm_test_lexicographical_compare SOURCES algorithm_test/lexicographical_compare.cpp)
bcm_test(NAME range_algorithm_test_lower_bound SOURCES algorithm_test/lower_bound.cpp)
bcm_test(NAME range_algorithm_test_max_element SOURCES algorithm_test/max_element.cpp)
bcm_test(NAME range_algorithm_test_merge SOURCES algorithm_test/merge.cpp)
bcm_test(NAME range_algorithm_test_min_element SOURCES algorithm_test/min_element.cpp)
bcm_test(NAME range_algorithm_test_mismatch SOURCES algorithm_test/mismatch.cpp)
bcm_test(NAME range_algorithm_test_next_permutation SOURCES algorithm_test/next_permutation.cpp)
bcm_test(NAME range_algorithm_test_nth_element SOURCES algorithm_test/nth_element.cpp)
bcm_test(NAME range_algorithm_test_partial_sort SOURCES algorithm_test/partial_sort.cpp)
bcm_test(NAME range_algorithm_test_partition SOURCES algorithm_test/partition.cpp)
bcm_test(NAME range_algorithm_test_prev_permutation SOURCES algorithm_test/prev_permutation.cpp)
bcm_test(NAME range_algorithm_test_random_shuffle SOURCES algorithm_test/random_shuffle.cpp)
bcm_test(NAME range_algorithm_test_remove SOURCES algorithm_test/remove.cpp)
bcm_test(NAME range_algorithm_test_remove_copy SOURCES algorithm_test/remove_copy.cpp)
bcm_test(NAME range_algorithm_test_remove_copy_if SOURCES algorithm_test/remove_copy_if.cpp)
bcm_test(NAME range_algorithm_test_remove_if SOURCES algorithm_test/remove_if.cpp)
bcm_test(NAME range_algorithm_test_replace SOURCES algorithm_test/replace.cpp)
bcm_test(NAME range_algorithm_test_replace_copy SOURCES algorithm_test/replace_copy.cpp)
bcm_test(NAME range_algorithm_test_replace_copy_if SOURCES algorithm_test/replace_copy_if.cpp)
bcm_test(NAME range_algorithm_test_replace_if SOURCES algorithm_test/replace_if.cpp)
bcm_test(NAME range_algorithm_test_reverse SOURCES algorithm_test/reverse.cpp)
bcm_test(NAME range_algorithm_test_reverse_copy SOURCES algorithm_test/reverse_copy.cpp)
bcm_test(NAME range_algorithm_test_rotate SOURCES algorithm_test/rotate.cpp)
bcm_test(NAME range_algorithm_test_rotate_copy SOURCES algorithm_test/rotate_copy.cpp)
bcm_test(NAME range_algorithm_test_search SOURCES algorithm_test/search.cpp)
bcm_test(NAME range_algorithm_test_search_n SOURCES algorithm_test/search_n.cpp)
bcm_test(NAME range_algorithm_test_set_difference SOURCES algorithm_test/set_difference.cpp)
bcm_test(NAME range_algorithm_test_set_intersection SOURCES algorithm_test/set_intersection.cpp)
bcm_test(NAME range_algorithm_test_set_symmetric_difference SOURCES algorithm_test/set_symmetric_difference.cpp)
bcm_test(NAME range_algorithm_test_set_union SOURCES algorithm_test/set_union.cpp)
bcm_test(NAME range_algorithm_test_sort SOURCES algorithm_test/sort.cpp)
bcm_test(NAME range_algorithm_test_stable_partition SOURCES algorithm_test/stable_partition.cpp)
bcm_test(NAME range_algorithm_test_stable_sort SOURCES algorithm_test/stable_sort.cpp)
bcm_test(NAME range_algorithm_test_swap_ranges SOURCES algorithm_test/swap_ranges.cpp)
bcm_test(NAME range_algorithm_test_transform SOURCES algorithm_test/transform.cpp)
bcm_test(NAME range_algorithm_test_unique SOURCES algorithm_test/unique.cpp)
bcm_test(NAME range_algorithm_test_unique_copy SOURCES algorithm_test/unique_copy.cpp)
bcm_test(NAME range_algorithm_test_upper_bound SOURCES algorithm_test/upper_bound.cpp)
bcm_test(NAME range_algorithm_ext_test_copy_n SOURCES algorithm_ext_test/copy_n.cpp)
bcm_test(NAME range_algorithm_ext_test_erase SOURCES algorithm_ext_test/erase.cpp)
bcm_test(NAME range_algorithm_ext_test_for_each_ext SOURCES algorithm_ext_test/for_each_ext.cpp)
bcm_test(NAME range_algorithm_ext_test_insert SOURCES algorithm_ext_test/insert.cpp)
bcm_test(NAME range_algorithm_ext_test_iota SOURCES algorithm_ext_test/iota.cpp)
bcm_test(NAME range_algorithm_ext_test_is_sorted SOURCES algorithm_ext_test/is_sorted.cpp)
bcm_test(NAME range_algorithm_ext_test_overwrite SOURCES algorithm_ext_test/overwrite.cpp)
bcm_test(NAME range_algorithm_ext_test_push_back SOURCES algorithm_ext_test/push_back.cpp)
bcm_test(NAME range_algorithm_ext_test_push_front SOURCES algorithm_ext_test/push_front.cpp)
bcm_test(NAME range_adl_conformance SOURCES adl_conformance.cpp)
bcm_test(NAME range_adl_conformance_no_using SOURCES adl_conformance_no_using.cpp)
bcm_test(NAME range_algorithm SOURCES algorithm.cpp)
bcm_test(NAME range_algorithm_example SOURCES algorithm_example.cpp)
bcm_test(NAME range_array SOURCES array.cpp)
bcm_test(NAME range_begin SOURCES begin.cpp)
bcm_test(NAME range_category SOURCES category.cpp)
bcm_test(NAME range_combine SOURCES combine.cpp)
bcm_test(NAME range_compat2 SOURCES compat2.cpp)
bcm_test(NAME range_compat3 SOURCES compat3.cpp)
bcm_test(NAME range_const_iterator SOURCES const_iterator.cpp)
bcm_test(NAME range_const_ranges SOURCES const_ranges.cpp)
bcm_test(NAME range_const_reverse_iterator SOURCES const_reverse_iterator.cpp)
bcm_test(NAME range_counting_range SOURCES counting_range.cpp)
bcm_test(NAME range_difference_type SOURCES difference_type.cpp)
bcm_test(NAME range_end SOURCES end.cpp)
bcm_test(NAME range_extension_mechanism SOURCES extension_mechanism.cpp)
bcm_test(NAME range_extension_size SOURCES extension_size.cpp)
bcm_test(NAME range_has_range_iterator SOURCES has_range_iterator.cpp)
bcm_test(NAME range_irange SOURCES irange.cpp)
bcm_test(NAME range_istream_range SOURCES istream_range.cpp)
bcm_test(NAME range_iterator SOURCES iterator.cpp)
bcm_test(NAME range_iterator_ext SOURCES iterator_ext.cpp)
bcm_test(NAME range_iterator_pair SOURCES iterator_pair.cpp)
bcm_test(NAME range_iterator_range SOURCES iterator_range.cpp)
bcm_test(NAME range_iterator_range_drop SOURCES iterator_range_drop.cpp)
bcm_test(NAME range_iterator_range_equality_bug SOURCES iterator_range_equality_bug.cpp)
bcm_test(NAME range_iterator_range_hash SOURCES iterator_range_hash.cpp)
bcm_test(NAME range_iterator_range_variant SOURCES iterator_range_variant.cpp)
bcm_test(NAME range_join SOURCES join.cpp)
bcm_test(NAME range_mutable_iterator SOURCES mutable_iterator.cpp)
bcm_test(NAME range_partial_workaround SOURCES partial_workaround.cpp)
bcm_test(NAME range_pointer SOURCES pointer.cpp)
bcm_test(NAME range_pointer_as_iterator SOURCES pointer_as_iterator.cpp)
bcm_test(NAME range_reference SOURCES reference.cpp)
bcm_test(NAME range_result_iterator SOURCES result_iterator.cpp)
bcm_test(NAME range_reverse_iterator SOURCES reverse_iterator.cpp)
bcm_test(NAME range_reverse_result_iterator SOURCES reverse_result_iterator.cpp)
bcm_test(NAME range_reversible_range SOURCES reversible_range.cpp)
bcm_test(NAME range_size_type SOURCES size_type.cpp)
bcm_test(NAME range_std_container SOURCES std_container.cpp)
bcm_test(NAME range_string SOURCES string.cpp)
bcm_test(NAME range_sub_range SOURCES sub_range.cpp)
bcm_test(NAME range_ticket_5486 SOURCES ticket_5486.cpp)
bcm_test(NAME range_ticket_5544_terminate_irange SOURCES ticket_5544_terminate_irange.cpp)
bcm_test(NAME range_ticket_5547 SOURCES ticket_5547.cpp)
bcm_test(NAME range_ticket_5556_is_sorted_namespace SOURCES ticket_5556_is_sorted_namespace.cpp)
bcm_test(NAME range_ticket_5811_indirected_optional SOURCES ticket_5811_indirected_optional.cpp)
bcm_test(NAME range_ticket_6715_iterator_range_equality SOURCES ticket_6715_iterator_range_equality.cpp)
bcm_test(NAME range_ticket_6944 SOURCES ticket_6944.cpp)
bcm_test(NAME range_ticket_10336 SOURCES ticket_10336.cpp)
bcm_test(NAME range_value_type SOURCES value_type.cpp)

