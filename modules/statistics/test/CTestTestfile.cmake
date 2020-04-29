# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/statistics/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/statistics/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(statistics_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_statistics.exe")
  set_tests_properties(statistics_gtest PROPERTIES  LABELS "statistics")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(statistics_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_statistics.exe")
  set_tests_properties(statistics_gtest PROPERTIES  LABELS "statistics")
else()
  add_test(statistics_gtest NOT_AVAILABLE)
endif()
