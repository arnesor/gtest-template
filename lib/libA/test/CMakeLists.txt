set(LIBATEST_SOURCES 
   LibATest.cpp
)

add_executable(libatest ${LIBATEST_SOURCES})
target_link_libraries(libatest gtest_main)
add_test(LibATest libatest)
