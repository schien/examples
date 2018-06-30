cmake_minimum_required (VERSION 3.11)

# Where Google Test's .h files can be found.
include_directories(
  "${gtest_SOURCE_DIR}/include"
  "${gtest_SOURCE_DIR}")

add_executable(runUnitTests test_foo.cpp)

# Standard linking to gtest stuff.
target_link_libraries(runUnitTests gtest gtest_main)

# Extra linking for the project.
target_link_libraries(runUnitTests example::foo)

add_test(NAME gtest COMMAND runUnitTests)
