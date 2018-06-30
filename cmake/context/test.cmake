# Boost.Context Library Tests Jamfile

#          Copyright Oliver Kowalke 2009.
# Distributed under the Boost Software License, Version 1.0.
#    (See accompanying file LICENSE_1_0.txt or copy at
#          http://www.boost.org/LICENSE_1_0.txt)


bcm_test(NAME test_invoke SOURCES test_invoke.cpp)
bcm_test(NAME test_apply SOURCES test_apply.cpp)
bcm_test(NAME test_fiber SOURCES test_fiber.cpp)
bcm_test(NAME test_callcc SOURCES test_callcc.cpp)
bcm_test(NAME test_execution_context_v2 SOURCES test_execution_context_v2.cpp)
bcm_test(NAME test_fcontext SOURCES test_fcontext.cpp)




