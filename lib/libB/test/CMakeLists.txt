set(LIBBTEST_SOURCES 
   LibBTest.cpp
)

add_library (libbtest STATIC ${LIBBTEST_SOURCES})
target_include_directories(libbtest PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(libbtest libb gtest)

add_executable(libbtestexe ${LIBBTEST_SOURCES})
target_link_libraries(libbtestexe libbtest gtest_main)
add_test(LibBTest libbtestexe)
