# Copyright 2007 Andy Tompkins.
# Copyright 2017 James E. King III
# Distributed under the Boost Software License, Version 1.0. (See
# accompanying file LICENSE_1_0.txt or copy at
# http://www.boost.org/LICENSE_1_0.txt)



# boost.jam defines BOOST_ALL_NO_LIB, this makes library management
# near-impossible with the platform selection logic in the random_provider

# boost::lexical_cast needs this for a warning-free build (CHAR_MAX)

# boost::random needs this setting for a warning free build:

# link static for easier debugging



# this rule enumerates through all the headers and ensures
# that inclusion of the header by itself is sufficient to
# compile successfully, proving the header does not depend
# on any other headers to be included first - adapted from
# logic in the winapi test bjam script
# Note: The test name starts with '~' in order to group these tests in the test report table, preferably at the end.
#       All '/' are replaced with '-' because apparently test scripts have a problem with test names containing slashes.
# ECHO $(rel_file) ;
bcm_test(NAME boost_uuid_compile_decl_header1 SOURCES compile/decl_header.cpp COMPILE_ONLY)

# make sure compile time options work in isolation
bcm_test(NAME boost_uuid_compile_decl_header2 SOURCES compile/decl_header.cpp COMPILE_ONLY)
bcm_test(NAME boost_uuid_compile_decl_header3 SOURCES compile/decl_header.cpp COMPILE_ONLY)

# ECHO All rules: $(all_rules) ;

# disabled in UBSAN builds due to issues in Boost.Serialization
# test serializing uuids
bcm_test(NAME boost_uuid_test_serialization SOURCES test_serialization.cpp)

# TODO - This test fails to like with boost_wserialization
# [ run test_wserialization.cpp
#     ../../serialization/build//boost_serialization
#     ../../serialization/build//boost_wserialization
#     : : : <dependency>../../config/test/all//BOOST_NO_STD_WSTREAMBUF
# ]


# test inclucing all .hpp files in 2 translations units
# to look for issues when using multiple translation units
# eg. missing inline on a global functionstate is not missing
bcm_test(NAME boost_uuid_test_include1 SOURCES test_include1.cpp)

# main test
bcm_test(NAME boost_uuid_test_uuid SOURCES test_uuid.cpp)
bcm_test(NAME boost_uuid_test_uuid_no_simd SOURCES test_uuid_no_simd.cpp)

# test uuid_io.hpp
bcm_test(NAME boost_uuid_test_io SOURCES test_io.cpp)

# test generators
bcm_test(NAME boost_uuid_test_nil_generator SOURCES test_nil_generator.cpp)
bcm_test(NAME boost_uuid_test_name_generator SOURCES test_name_generator.cpp)
bcm_test(NAME boost_uuid_test_string_generator SOURCES test_string_generator.cpp)
bcm_test(NAME boost_uuid_test_random_generator SOURCES test_random_generator.cpp)

# test tagging an object
bcm_test(NAME boost_uuid_test_tagging SOURCES test_tagging.cpp)

# test use cases
bcm_test(NAME boost_uuid_test_uuid_class SOURCES test_uuid_class.cpp)
bcm_test(NAME boost_uuid_test_uuid_in_map SOURCES test_uuid_in_map.cpp)

# test hash functions
bcm_test(NAME boost_uuid_test_md5 SOURCES test_md5.cpp)
bcm_test(NAME boost_uuid_test_sha1 SOURCES test_sha1.cpp)

# test MSVC 12 (VS2013) optimizer bug with SIMD operations.
# See https://svn.boost.org/trac/boost/ticket/8509#comment:3
# Only happens in Release x64 builds.
bcm_test(NAME boost_uuid_test_msvc_simd_bug981648_main SOURCES test_msvc_simd_bug981648_main.cpp)

# a small benchmark test for random generation
bcm_test(NAME boost_uuid_test_bench_random SOURCES test_bench_random.cpp)

bcm_test(NAME boost_uuid_test_entropy_error SOURCES test_entropy_error.cpp)

# tests for the header-only random provider
# there are a number of variations to test all compile-time branches
# and to make sure we test all the error handling code paths
bcm_test(NAME boost_uuid_test_detail_random_provider1 SOURCES test_detail_random_provider.cpp)

bcm_test(NAME boost_uuid_test_detail_random_provider2 SOURCES test_detail_random_provider.cpp)

# CI builds in appveyor normally select the bcrypt provider, so
# force wincrypt to be selected and test both happy and sad paths:

bcm_test(NAME boost_uuid_test_detail_random_provider3 SOURCES test_detail_random_provider.cpp)

bcm_test(NAME boost_uuid_test_detail_random_provider4 SOURCES test_detail_random_provider.cpp)

# CI builds in travis will eventually select getentropy when they move
# to a version of ubuntu with glibc-2.25 on it, so when that happens keep
# testing the posix provider:
bcm_test(NAME boost_uuid_test_detail_random_provider5 SOURCES test_detail_random_provider.cpp)

bcm_test(NAME boost_uuid_test_detail_random_provider6 SOURCES test_detail_random_provider.cpp)
