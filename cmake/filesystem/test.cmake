# Boost Filesystem Library test Jamfile

# (C) Copyright Beman Dawes 2002-2006
# Distributed under the Boost Software License, Version 1.0.
# See www.boost.org/LICENSE_1_0.txt

bcm_test(NAME fs_config_info SOURCES config_info.cpp)
bcm_test(NAME convenience_test SOURCES convenience_test.cpp)
bcm_test(NAME macro_default_test SOURCES macro_default_test.cpp COMPILE_ONLY)
bcm_test(NAME fs_odr_test SOURCES odr1_test.cpp odr2_test.cpp)
bcm_test(NAME deprecated_test SOURCES deprecated_test.cpp)
bcm_test(NAME fstream_test SOURCES fstream_test.cpp)
bcm_test(NAME large_file_support_test SOURCES large_file_support_test.cpp)
bcm_test(NAME locale_info SOURCES locale_info.cpp)
bcm_test(NAME operations_test SOURCES operations_test.cpp)
bcm_test(NAME operations_unit_test SOURCES operations_unit_test.cpp)
bcm_test(NAME path_test SOURCES path_test.cpp)
bcm_test(NAME path_unit_test SOURCES path_unit_test.cpp)
bcm_test(NAME relative_test SOURCES relative_test.cpp)
bcm_test(NAME example_simple_ls SOURCES ../example/simple_ls.cpp)
bcm_test(NAME example_file_status SOURCES ../example/file_status.cpp)

