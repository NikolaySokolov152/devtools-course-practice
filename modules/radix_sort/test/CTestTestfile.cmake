# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/radix_sort/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/radix_sort/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(radix_sort_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_radix_sort.exe")
  set_tests_properties(radix_sort_gtest PROPERTIES  LABELS "radix_sort")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(radix_sort_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_radix_sort.exe")
  set_tests_properties(radix_sort_gtest PROPERTIES  LABELS "radix_sort")
else()
  add_test(radix_sort_gtest NOT_AVAILABLE)
endif()
