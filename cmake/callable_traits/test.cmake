# Copyright Louis Dionne 2013-2016
# Modified Work Copyright Barrett Adair 2016-2017
# Copyright 2017 Peter Dimov
#
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE.md or copy at http://boost.org/LICENSE_1_0.txt)

include_directories(${CMAKE_CURRENT_LIST_DIR}/include)
include_directories(${CMAKE_CURRENT_LIST_DIR})

function(callable_traits_target_name_for out file)
    if (NOT ARGV2)
        set(_extension ".cpp")
    else()
        set(_extension "${ARGV2}")
    endif()

    file(RELATIVE_PATH _relative ${PROJECT_SOURCE_DIR} ${file})
    string(REPLACE "${_extension}" "" _name ${_relative})
    string(REGEX REPLACE "/" "_" _name ${_name})
    set(${out} "${_name}" PARENT_SCOPE)
endfunction()

file(GLOB_RECURSE UNIT_TESTS "*.cpp")

foreach(_file IN LISTS UNIT_TESTS)
    callable_traits_target_name_for(_target "${_file}")
    set(lazy_target "lazy_${_target}")
    bcm_test(NAME callable_traits_${_target} SOURCES "${_file}")
    bcm_test(NAME callable_traits_${lazy_target} SOURCES "${_file}")
    target_compile_definitions(callable_traits_${lazy_target} INTERFACE -DUSE_LAZY_TYPES)
endforeach()
