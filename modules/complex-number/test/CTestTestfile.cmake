# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/complex-number/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/complex-number/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(complex-number_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_complex-number.exe")
  set_tests_properties(complex-number_gtest PROPERTIES  LABELS "complex-number")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(complex-number_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_complex-number.exe")
  set_tests_properties(complex-number_gtest PROPERTIES  LABELS "complex-number")
else()
  add_test(complex-number_gtest NOT_AVAILABLE)
endif()
