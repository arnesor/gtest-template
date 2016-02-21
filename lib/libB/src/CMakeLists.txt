set(LIBB_SOURCES
   LibB.cpp
)

add_library (libb STATIC ${LIBB_SOURCES})
target_include_directories(libb PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(libb liba)
