target_compile_definitions(boost_log PUBLIC
__STDC_CONSTANT_MACROS # Use system-defined macros for integer constants, if possible
BOOST_SPIRIT_USE_PHOENIX_V3=1
)
if(MSVC)
# Disable warnings about using 'insecure' standard C functions
target_compile_definitions(boost_log PUBLIC
_SCL_SECURE_NO_WARNINGS
_SCL_SECURE_NO_DEPRECATE
_CRT_SECURE_NO_WARNINGS
_CRT_SECURE_NO_DEPRECATE
)
target_compile_options(boost_log PUBLIC
/bigobj
/wd4503 # decorated name length exceeded, name was truncated
/wd4456 # declaration of 'A' hides previous local declaration
/wd4459 # declaration of 'A' hides global declaration
/wd4003 # not enough actual parameters for macro 'X' - caused by BOOST_PP_IS_EMPTY and BOOST_PP_IS_BEGIN_PARENS which are used by Fusion
)
endif()

if (${CMAKE_C_COMPILER} MATCHES "icc.*$") 
# Disable Intel warnings:
# warning #177: function "X" was declared but never referenced
# warning #780: using-declaration ignored -- it refers to the current namespace
# warning #2196: routine is both "inline" and "noinline"
# remark #1782: #pragma once is obsolete. Use #ifndef guard instead.
# remark #193: zero used for undefined preprocessing identifier "X"
# remark #304: access control not specified ("public" by default)
# remark #981: operands are evaluated in unspecified order
# remark #1418: external function definition with no prior declaration
# Mostly comes from Boost.Phoenix: warning #411: class "X" defines no constructor to initialize the following: reference member "Y"...
# warning #734: "X" (declared at line N of "file.hpp"), required for copy that was eliminated, is inaccessible
# warning #279: controlling expression is constant
if(MSVC)
target_compile_options(boost_log PRIVATE "/Qwd177,780,2196,1782,193,304,981,1418,411,734,279")
elseif(APPLE)
target_compile_options(boost_log PRIVATE "-wd177,780,2196,1782,193,304,981,1418,411,734,279")
elseif(UNIX)
target_compile_options(boost_log PRIVATE "-wd177,780,2196,1782,193,304,981,1418,411,734,279")
endif()
endif()

if(NOT MSVC)
target_compile_options(boost_log PUBLIC -ftemplate-depth-1024)
endif()

if(WIN32)
target_compile_definitions(boost_log PUBLIC
NOMINMAX
WIN32_LEAN_AND_MEAN
SECURITY_WIN32
BOOST_USE_WINDOWS_H
)
target_link_libraries(boost_log PUBLIC
-lws2_32
-lmswsock
-ladvapi32
)
endif()

if(${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
target_compile_definitions(boost_log PUBLIC _XOPEN_SOURCE=600)
target_link_libraries(boost_log PUBLIC -lrt)
endif()

if(WIN32)
    target_sources(boost_log PRIVATE src/windows/light_rw_mutex.cpp)
    if(NOT BOOST_LOG_WITHOUT_IPC)
    target_sources(boost_log PRIVATE
    src/windows/object_name.cpp
    src/windows/mapped_shared_memory.cpp
    src/windows/ipc_sync_wrappers.cpp
    src/windows/ipc_reliable_message_queue.cpp
    )
    target_link_libraries(boost_log PUBLIC -lsecur32)
    endif()
    if(NOT BOOST_LOG_WITHOUT_DEBUG_OUTPUT)
    target_sources(boost_log PRIVATE src/windows/debug_output_backend.cpp)
    endif()
    if(NOT BOOST_LOG_WITHOUT_EVENT_LOG)
    target_sources(boost_log PRIVATE
    src/windows/simple_event_log.mc
    src/windows/event_log_backend.cpp
    )
    target_link_libraries(boost_log PUBLIC -lpsapi)
    endif()
else()
    target_compile_definitions(boost_log PUBLIC BOOST_LOG_WITHOUT_EVENT_LOG BOOST_LOG_WITHOUT_DEBUG_OUTPUT)
    target_sources(boost_log PRIVATE
    src/posix/object_name.cpp
    src/posix/ipc_reliable_message_queue.cpp
    )
endif()

target_compile_definitions(boost_log PUBLIC BOOST_LOG_BUILDING_THE_LIB=1)
target_include_directories(boost_log PRIVATE src/)

add_library(boost_log_setup
    src/setup/parser_utils.cpp
    src/setup/init_from_stream.cpp
    src/setup/init_from_settings.cpp
    src/setup/settings_parser.cpp
    src/setup/filter_parser.cpp
    src/setup/formatter_parser.cpp
    src/setup/default_filter_factory.cpp
    src/setup/matches_relation_factory.cpp
    src/setup/default_formatter_factory.cpp
)
target_compile_definitions(boost_log_setup PUBLIC BOOST_LOG_SETUP_BUILDING_THE_LIB=1)
target_include_directories(boost_log_setup PRIVATE src)
target_link_libraries(boost_log_setup boost_log)
