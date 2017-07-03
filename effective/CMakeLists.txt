
cmake_minimum_required(VERSION 3.5)
project(boost_{{name}})
include(CMakePackageConfigHelpers)

{{#deps}}
find_package({{package}})
{{/deps}}

add_library(boost_{{name}} {{library_type}}
{{#sources}}
src/{{source}}
{{/sources}}
)
add_library(boost::{{name}} ALIAS boost_{{name}})
set_property(TARGET boost_{{name}} PROPERTY EXPORT_NAME {{name}})

target_include_directories(boost_{{name}} {{public_type}}
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
)

{{#deps}}
if({{package}}_FOUND)
target_link_libraries(boost_{{name}} {{public_type}} {{library}})
endif()
{{/deps}}

{{additional_cmake}}

install(DIRECTORY include/ DESTINATION include)

install(TARGETS boost_{{name}} EXPORT boost_{{name}}-targets
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    INCLUDES DESTINATION include
)

install(EXPORT boost_{{name}}-targets
  FILE boost_{{name}}-targets.cmake
  NAMESPACE boost::
  DESTINATION lib/cmake/boost_{{name}}
)

file(WRITE "${PROJECT_BINARY_DIR}/boost_{{name}}-config.cmake" "include(CMakeFindDependencyMacro)")
{{#deps}}
if({{package}}_FOUND)
file(APPEND "${PROJECT_BINARY_DIR}/boost_{{name}}-config.cmake" "
find_package({{package}})
")
endif()
{{/deps}}


file(APPEND "${PROJECT_BINARY_DIR}/boost_{{name}}-config.cmake" "
include(\"\${CMAKE_CURRENT_LIST_DIR}/boost_{{name}}-targets.cmake\")
")

write_basic_package_version_file("${PROJECT_BINARY_DIR}/boost_{{name}}-config-version.cmake"
  VERSION 1.64
  COMPATIBILITY AnyNewerVersion
  )

install(FILES
    "${PROJECT_BINARY_DIR}/boost_{{name}}-config.cmake"
    "${PROJECT_BINARY_DIR}/boost_{{name}}-config-version.cmake"
  DESTINATION lib/cmake/boost_{{name}}
)

