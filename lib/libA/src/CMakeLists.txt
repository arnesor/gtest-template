set(LIBA_SOURCES
   LibA.cpp
)

add_library (liba STATIC ${LIBA_SOURCES})
target_include_directories(liba PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

