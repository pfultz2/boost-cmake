if("${CMAKE_SYSTEM_NAME}" MATCHES "Linux")
    target_link_libraries(boost_interprocess INTERFACE -lrt)
endif()
