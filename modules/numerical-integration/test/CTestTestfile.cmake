# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/numerical-integration/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/numerical-integration/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(numerical-integration_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_numerical-integration.exe")
  set_tests_properties(numerical-integration_gtest PROPERTIES  LABELS "numerical-integration")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(numerical-integration_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_numerical-integration.exe")
  set_tests_properties(numerical-integration_gtest PROPERTIES  LABELS "numerical-integration")
else()
  add_test(numerical-integration_gtest NOT_AVAILABLE)
endif()
