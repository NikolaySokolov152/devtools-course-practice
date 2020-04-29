# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/vector3d/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/vector3d/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(vector3d_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_vector3d.exe")
  set_tests_properties(vector3d_gtest PROPERTIES  LABELS "vector3d")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(vector3d_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_vector3d.exe")
  set_tests_properties(vector3d_gtest PROPERTIES  LABELS "vector3d")
else()
  add_test(vector3d_gtest NOT_AVAILABLE)
endif()
