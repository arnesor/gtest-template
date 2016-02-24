set(LIBATEST_SOURCES 
   LibATest.cpp
)

# Add files to regression test with absolute path. Need CACHE INTERNAL to use as global variable.
prepend(SOURCES_WITH_ABS_PATH ${CMAKE_CURRENT_SOURCE_DIR} ${LIBATEST_SOURCES})
set(REGRESSIONTEST_SOURCES ${REGRESSIONTEST_SOURCES} ${SOURCES_WITH_ABS_PATH} CACHE INTERNAL "REGRESSIONTEST_SOURCES")

# Debug 
# MESSAGE(STATUS "REGRESSIONTEST_SOURCES after LIBATEST: " ${REGRESSIONTEST_SOURCES})

add_executable(libatest ${LIBATEST_SOURCES})
target_link_libraries(libatest liba gtest_main)
add_test(LibATest libatest)
