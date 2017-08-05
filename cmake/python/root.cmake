find_package(PythonLibs)
target_link_libraries(boost_python PUBLIC ${PYTHON_LIBRARIES})
target_include_directories(boost_python PUBLIC ${PYTHON_INCLUDE_DIRS})

