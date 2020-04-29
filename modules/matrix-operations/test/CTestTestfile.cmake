# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/matrix-operations/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/matrix-operations/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(matrix-operations_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_matrix-operations.exe")
  set_tests_properties(matrix-operations_gtest PROPERTIES  LABELS "matrix-operations")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(matrix-operations_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_matrix-operations.exe")
  set_tests_properties(matrix-operations_gtest PROPERTIES  LABELS "matrix-operations")
else()
  add_test(matrix-operations_gtest NOT_AVAILABLE)
endif()
