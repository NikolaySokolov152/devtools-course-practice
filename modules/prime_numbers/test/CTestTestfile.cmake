# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/prime_numbers/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/prime_numbers/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(prime_numbers_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_prime_numbers.exe")
  set_tests_properties(prime_numbers_gtest PROPERTIES  LABELS "prime_numbers")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(prime_numbers_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_prime_numbers.exe")
  set_tests_properties(prime_numbers_gtest PROPERTIES  LABELS "prime_numbers")
else()
  add_test(prime_numbers_gtest NOT_AVAILABLE)
endif()
