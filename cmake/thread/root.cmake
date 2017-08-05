find_package(Threads)
target_link_libraries(boost_thread PUBLIC Threads::Threads)

if(WIN32)
target_sources(boost_thread PRIVATE
    src/win32/thread.cpp
    src/win32/tss_dll.cpp
    src/win32/tss_pe.cpp
)
else()
target_sources(boost_thread PRIVATE
    src/pthread/thread.cpp
    src/pthread/once.cpp
)
endif()
