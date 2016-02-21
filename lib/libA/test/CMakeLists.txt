set(LIBATEST_SOURCES 
   LibATest.cpp
)

add_library (libatest STATIC ${LIBATEST_SOURCES})
target_include_directories(libatest PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(libatest liba gtest)

add_executable(libatestexe ${LIBATEST_SOURCES})
target_link_libraries(libatestexe libatest gtest_main)
add_test(LibATest libatestexe)
