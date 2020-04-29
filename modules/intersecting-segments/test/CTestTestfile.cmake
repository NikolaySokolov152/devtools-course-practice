# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/intersecting-segments/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/intersecting-segments/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(intersecting-segments_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_intersecting-segments.exe")
  set_tests_properties(intersecting-segments_gtest PROPERTIES  LABELS "intersecting-segments")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(intersecting-segments_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_intersecting-segments.exe")
  set_tests_properties(intersecting-segments_gtest PROPERTIES  LABELS "intersecting-segments")
else()
  add_test(intersecting-segments_gtest NOT_AVAILABLE)
endif()
