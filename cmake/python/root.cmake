find_package(PythonLibs)
target_link_libraries(boost_python PUBLIC ${PYTHON_LIBRARIES})
target_include_directories(boost_python PUBLIC ${PYTHON_INCLUDE_DIRS})

target_sources(boost_python PRIVATE
    src/converter/arg_to_python_base.cpp
    src/converter/builtin_converters.cpp
    src/converter/from_python.cpp
    src/converter/registry.cpp
    src/converter/type_id.cpp
    src/object/class.cpp
    src/object/enum.cpp
    src/object/function.cpp
    src/object/function_doc_signature.cpp
    src/object/inheritance.cpp
    src/object/iterator.cpp
    src/object/life_support.cpp
    src/object/pickle_support.cpp
    src/object/stl_iterator.cpp
    src/object_operators.cpp
    src/object_protocol.cpp
)

if(NOT BUILD_SHARED_LIBS)
target_compile_definitions(boost_python PUBLIC BOOST_PYTHON_STATIC_LIB)
endif()
