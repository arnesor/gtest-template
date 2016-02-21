set(REGRESSIONTEST_SOURCES 
   main.cpp
)

add_executable(regressiontest ${REGRESSIONTEST_SOURCES})
target_link_libraries(regressiontest libatest libbtest gtest_main)
add_test(RegressionTest regressiontest)
