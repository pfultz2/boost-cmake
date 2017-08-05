find_package(Threads)
target_link_libraries(boost_asio INTERFACE Threads::Threads)

find_package(OpenSSL)
if(OpenSSL_FOUND)
target_link_libraries(boost_asio INTERFACE OpenSSL::SSL)
endif()

