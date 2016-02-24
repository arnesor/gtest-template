# Debug
# MESSAGE(STATUS "REGRESSIONTEST_SOURCES before REGRESSIONTEST: " ${REGRESSIONTEST_SOURCES})

add_executable(regressiontest ${REGRESSIONTEST_SOURCES})
target_link_libraries(regressiontest liba libb gtest_main)
add_test(RegressionTest regressiontest)
