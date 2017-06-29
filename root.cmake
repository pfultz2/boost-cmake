
cmake_minimum_required(VERSION 3.5)
project(boost)

macro(find_package NAME)
  if(NOT "${NAME}" MATCHES "^boost_.*$")
    _find_package(${ARGV})
  endif()
endmacro()

file(GLOB_RECURSE LIBS libs/*CMakeLists.txt)
foreach(lib ${LIBS})
    get_filename_component(LIB_DIR ${lib} DIRECTORY)
    add_subdirectory(${LIB_DIR})
endforeach()
