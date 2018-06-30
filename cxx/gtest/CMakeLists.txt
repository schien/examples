cmake_minimum_required (VERSION 3.11)
project (gtest-example)

set(FOO_SOURCE_FILES src/foo.cpp )
set(FOO_INCLUDE_FILES include/foo.h )
#add_library(foo_lib ${FOO_SOURCE_FILES} ${FOO_INCLUDE_FILES} )
add_library(foo_lib ${FOO_SOURCE_FILES} )
target_include_directories(foo_lib
  PUBLIC include)
add_library(example::foo ALIAS foo_lib)
target_compile_features(foo_lib PRIVATE cxx_std_14)

## Setup for GTest
add_subdirectory(lib/googletest)

enable_testing()
add_subdirectory(test)
