# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/money-converter/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/money-converter/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(money-converter_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_money-converter.exe")
  set_tests_properties(money-converter_gtest PROPERTIES  LABELS "money-converter")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(money-converter_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_money-converter.exe")
  set_tests_properties(money-converter_gtest PROPERTIES  LABELS "money-converter")
else()
  add_test(money-converter_gtest NOT_AVAILABLE)
endif()
