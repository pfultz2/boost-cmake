
cmake_minimum_required(VERSION 3.5)
project(boost)

macro(find_package NAME)
  if(NOT "${NAME}" MATCHES "^boost_.*$")
    _find_package(${ARGV})
  endif()
endmacro()

file(GLOB LIBS libs/*)
foreach(lib ${LIBS})
    add_subdirectory(${lib})
endforeach()
