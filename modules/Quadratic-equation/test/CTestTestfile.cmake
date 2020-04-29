# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/Quadratic-equation/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/Quadratic-equation/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(Quadratic-equation_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_Quadratic-equation.exe")
  set_tests_properties(Quadratic-equation_gtest PROPERTIES  LABELS "Quadratic-equation")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(Quadratic-equation_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_Quadratic-equation.exe")
  set_tests_properties(Quadratic-equation_gtest PROPERTIES  LABELS "Quadratic-equation")
else()
  add_test(Quadratic-equation_gtest NOT_AVAILABLE)
endif()
