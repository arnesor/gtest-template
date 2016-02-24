set(LIBBTEST_SOURCES 
   LibBTest.cpp
)

# Add files to regression test with absolute path. Need CACHE INTERNAL to use as global variable.
prepend(SOURCES_WITH_ABS_PATH ${CMAKE_CURRENT_SOURCE_DIR} ${LIBBTEST_SOURCES})
set(REGRESSIONTEST_SOURCES ${REGRESSIONTEST_SOURCES} ${SOURCES_WITH_ABS_PATH} CACHE INTERNAL "REGRESSIONTEST_SOURCES")

# Debug
# MESSAGE(STATUS "REGRESSIONTEST_SOURCES after LIBBTEST: " ${REGRESSIONTEST_SOURCES})

add_executable(libbtest ${LIBBTEST_SOURCES})
target_link_libraries(libbtest libb gtest_main)
add_test(LibBTest libbtest)
