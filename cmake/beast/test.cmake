
set(TEST_MAIN ${PROJECT_SOURCE_DIR}/subtree/unit_test/include/boost/beast/unit_test/main.cpp)

add_library(beast_test_settings INTERFACE)
target_include_directories(beast_test_settings INTERFACE ${PROJECT_SOURCE_DIR}/test/extras/include)
target_include_directories(beast_test_settings INTERFACE ${PROJECT_SOURCE_DIR}/subtree/unit_test/include)
bcm_test_link_libraries(beast_test_settings)

# TODO: Add the rest of tests for beast

bcm_test(NAME test_beast SOURCES
    ${TEST_MAIN}
    beast/core.cpp
    beast/http.cpp
    beast/version.cpp
    beast/websocket.cpp
    beast/zlib.cpp
)
