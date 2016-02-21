cmake_minimum_required(VERSION 3.1)
project(GTEST-TEMPLATE CXX)

# Using C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED on)

# Setting default compiler flags
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Wall -pedantic")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -Wall -pedantic")

# Enable testing with build target: make test
enable_testing()

# Including Google Test and Google Mock as CMake download projects,
# see http://crascit.com/2015/07/25/cmake-gtest/
if (CMAKE_VERSION VERSION_LESS 3.2)
    set(UPDATE_DISCONNECTED_IF_AVAILABLE "")
else()
    set(UPDATE_DISCONNECTED_IF_AVAILABLE "UPDATE_DISCONNECTED 1")
endif()

include(build/DownloadProject.cmake)
download_project(PROJ                googletest
                 GIT_REPOSITORY https://github.com/google/googletest.git
                 GIT_TAG             master
                 ${UPDATE_DISCONNECTED_IF_AVAILABLE}
)

add_subdirectory(${googletest_SOURCE_DIR} ${googletest_BINARY_DIR} EXCLUDE_FROM_ALL)

# At time of writing, gtest and gmock don't add a public include directory
# to their respective targets for their headers, so we have to explicitly
# add them ourselves so that client code finds gtest/gtest.h and gmock/gmock.h
target_include_directories(gtest      INTERFACE "${gtest_SOURCE_DIR}/include")
target_include_directories(gmock_main INTERFACE "${gmock_SOURCE_DIR}/include")


# Adding other subdirectories
add_subdirectory (lib)
add_subdirectory (test)

