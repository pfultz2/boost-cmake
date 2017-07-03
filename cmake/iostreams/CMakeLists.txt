if(ZLIB_FOUND)
target_sources(boost_iostreams PRIVATE src/zlib.cpp)
endif()

if(BZip2_FOUND)
target_sources(boost_iostreams PRIVATE src/bzip2.cpp)
endif()
