cmake_minimum_required(VERSION 3.5)
project(boost_{{name}})

find_package(BCM)
include(BCMDeploy)
include(BCMSetupVersion)
include(BCMTest)

{{#deps}}
find_package({{package}})
{{/deps}}

bcm_setup_version(VERSION {{version}})

add_library(boost_{{name}} {{library_type}}
{{#sources}}
src/{{source}}
{{/sources}}
)
set_property(TARGET boost_{{name}} PROPERTY EXPORT_NAME {{name}})

{{#deps}}
target_link_libraries(boost_{{name}} {{public_type}} {{library}})
{{/deps}}

{{& additional_cmake}}

{{#if_build}}
target_include_directories(boost_{{name}} PRIVATE include)
{{/if_build}}

bcm_deploy(TARGETS boost_{{name}} INCLUDE include NAMESPACE boost::)

bcm_add_test_subdirectory(test)
