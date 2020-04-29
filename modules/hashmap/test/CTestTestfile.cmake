# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/hashmap/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/hashmap/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(hashmap_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_hashmap.exe")
  set_tests_properties(hashmap_gtest PROPERTIES  LABELS "hashmap")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(hashmap_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_hashmap.exe")
  set_tests_properties(hashmap_gtest PROPERTIES  LABELS "hashmap")
else()
  add_test(hashmap_gtest NOT_AVAILABLE)
endif()
