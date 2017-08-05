find_package(Threads)
target_link_libraries(boost_asio INTERFACE Threads::Threads)
