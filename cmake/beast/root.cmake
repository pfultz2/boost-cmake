find_package(ZLIB)

target_link_libraries(boost_beast INTERFACE ZLIB::ZLIB)
