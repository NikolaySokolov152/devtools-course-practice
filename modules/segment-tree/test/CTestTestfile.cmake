# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/segment-tree/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/segment-tree/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(segment-tree_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_segment-tree.exe")
  set_tests_properties(segment-tree_gtest PROPERTIES  LABELS "segment-tree")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(segment-tree_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_segment-tree.exe")
  set_tests_properties(segment-tree_gtest PROPERTIES  LABELS "segment-tree")
else()
  add_test(segment-tree_gtest NOT_AVAILABLE)
endif()
