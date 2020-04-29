# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/distance-between-vectors/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/distance-between-vectors/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(distance-between-vectors_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_distance-between-vectors.exe")
  set_tests_properties(distance-between-vectors_gtest PROPERTIES  LABELS "distance-between-vectors")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(distance-between-vectors_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_distance-between-vectors.exe")
  set_tests_properties(distance-between-vectors_gtest PROPERTIES  LABELS "distance-between-vectors")
else()
  add_test(distance-between-vectors_gtest NOT_AVAILABLE)
endif()
