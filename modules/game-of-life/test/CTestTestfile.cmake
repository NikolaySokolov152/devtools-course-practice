# CMake generated Testfile for 
# Source directory: C:/Users/sokol-pc/devtools-course-practice/modules/game-of-life/test
# Build directory: C:/Users/sokol-pc/devtools-course-practice/modules/game-of-life/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(game-of-life_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_game-of-life.exe")
  set_tests_properties(game-of-life_gtest PROPERTIES  LABELS "game-of-life")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(game-of-life_gtest "C:/Users/sokol-pc/devtools-course-practice/bin/test_game-of-life.exe")
  set_tests_properties(game-of-life_gtest PROPERTIES  LABELS "game-of-life")
else()
  add_test(game-of-life_gtest NOT_AVAILABLE)
endif()
