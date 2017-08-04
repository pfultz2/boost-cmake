include(BCMTest)

{{#test_deps}}
find_package({{package}})
{{/test_deps}}

bcm_test_link_libraries(boost_{{name}}
{{#test_deps}}
{{library}}
{{/test_deps}}
)

{{& additional_test}}
