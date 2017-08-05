find_package(ZLIB)
find_package(BZip2)

if(ZLIB_FOUND)
target_link_libraries(boost_iostreams ZLIB::ZLIB)
target_sources(boost_iostreams PRIVATE src/zlib.cpp)
endif()

if(BZip2_FOUND)
target_link_libraries(boost_iostreams BZip2::BZip2)
target_sources(boost_iostreams PRIVATE src/bzip2.cpp)
endif()
