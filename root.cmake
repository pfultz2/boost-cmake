
cmake_minimum_required(VERSION 3.5)
project(boost)

# macro(find_package NAME)
#     if(NOT "${NAME}" MATCHES "^boost_.*$" AND NOT "${NAME}" STREQUAL BCM)
#         _find_package(${ARGV})
#     else()
#         set(${ARGV0}_FOUND ON CACHE BOOL "")
#     endif()
# endmacro()

include(bcm/share/bcm/cmake/BCMConfig.cmake)
include(BCMIgnorePackage)
bcm_ignore_package(BCM)

set(EXCLUDE_LIBS)

find_package(PythonLibs)
if(NOT PythonLibs_FOUND)
    list(APPEND EXCLUDE_LIBS python)
endif()

find_package(PythonLibs)
if(NOT PythonLibs_FOUND)
    list(APPEND EXCLUDE_LIBS python)
endif()

find_package(MPI)
if(NOT MPI_FOUND)
    list(APPEND EXCLUDE_LIBS mpi)
endif()

set(BOOST_IGNORE_PACKAGES)
set(BOOST_SUBDIRS)

file(GLOB_RECURSE LIBS libs/*CMakeLists.txt)
foreach(lib ${LIBS})
    file(READ ${lib} CONTENT)
    if("${CONTENT}" MATCHES "project\\(([^)]*)\\)")
        list(APPEND BOOST_IGNORE_PACKAGES ${CMAKE_MATCH_1})
        get_filename_component(LIB_DIR ${lib} DIRECTORY)
        get_filename_component(LIB_NAME ${LIB_DIR} NAME)
        if(NOT "${LIB_NAME}" IN_LIST EXCLUDE_LIBS)
            list(APPEND BOOST_SUBDIRS ${LIB_DIR})
        endif()
    endif()
endforeach()

foreach(PACKAGE ${BOOST_IGNORE_PACKAGES})
    bcm_ignore_package(${PACKAGE})
endforeach()

foreach(SUBDIR ${BOOST_SUBDIRS})
    add_subdirectory(${SUBDIR})
endforeach()
