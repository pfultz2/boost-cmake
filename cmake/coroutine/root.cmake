target_sources(boost_coroutine PRIVATE src/detail/coroutine_context.cpp)
if(WIN32)
target_sources(boost_coroutine PRIVATE src/windows/stack_traits.cpp)
else()
target_sources(boost_coroutine PRIVATE src/posix/stack_traits.cpp)
endif()
