set(LIBBTEST_SOURCES 
   LibBTest.cpp
)

add_executable(libbtest ${LIBBTEST_SOURCES})
target_link_libraries(libbtest libb gtest_main)
add_test(LibBTest libbtest)
