# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/rb-tree/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/rb-tree/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(rb-tree_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_rb-tree.exe")
  set_tests_properties(rb-tree_gtest PROPERTIES  LABELS "rb-tree")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(rb-tree_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_rb-tree.exe")
  set_tests_properties(rb-tree_gtest PROPERTIES  LABELS "rb-tree")
else()
  add_test(rb-tree_gtest NOT_AVAILABLE)
endif()
