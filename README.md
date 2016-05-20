# gtest-template
This is a template for small projects using Google Test and CMake. The
intention is to show building several libraries, each with their own test
executable and a regression test running all the tests together in a single
executable.

## Building
The project uses out-of-source builds. The following examples assume that your
build directory parallel to the source directory. Example:

```
mkdir ~/build
cd ~/build
cmake -DCMAKE_BUILD_TYPE=Debug ../gtest-template
```

or for Eclipse:

```
cmake -G"Eclipse CDT4 - Unix Makefiles" -DCMAKE_ECLIPSE_GENERATE_SOURCE_PROJECT=TRUE -DCMAKE_BUILD_TYPE=Debug ../gtest-template
```

or for Visual Studio 2015:

```
cmake -G"Visual Studio 14 2015 Win64" ..\gtest-template
```
