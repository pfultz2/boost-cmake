if(ZLIB_FOUND)
target_sources(boost_iostreams src/zlib.cpp)
endif()

if(BZip2_FOUND)
target_sources(boost_iostreams src/bzip2.cpp)
endif()
