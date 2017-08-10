if(UNIX AND NOT APPLE)
target_link_libraries(boost_dll INTERFACE -ldl)
endif()