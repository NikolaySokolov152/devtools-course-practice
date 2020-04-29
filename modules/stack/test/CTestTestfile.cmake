# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/stack/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/stack/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(stack_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_stack.exe")
  set_tests_properties(stack_gtest PROPERTIES  LABELS "stack")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(stack_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_stack.exe")
  set_tests_properties(stack_gtest PROPERTIES  LABELS "stack")
else()
  add_test(stack_gtest NOT_AVAILABLE)
endif()
