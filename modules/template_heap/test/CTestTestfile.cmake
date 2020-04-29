# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/template_heap/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/template_heap/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(template_heap_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_template_heap.exe")
  set_tests_properties(template_heap_gtest PROPERTIES  LABELS "template_heap")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(template_heap_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_template_heap.exe")
  set_tests_properties(template_heap_gtest PROPERTIES  LABELS "template_heap")
else()
  add_test(template_heap_gtest NOT_AVAILABLE)
endif()
