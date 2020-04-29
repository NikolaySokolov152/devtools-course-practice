# Install script for directory: C:/Users/sokol-pc/devtools-course-practice

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/DevTools")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/sokol-pc/devtools-course-practice/3rdparty/gtest/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/Quadratic-equation/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/complex-number/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/d-heap/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/distance-between-vectors/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/fraction/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/game-of-life/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/hashmap/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/intersecting-segments/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/leftist-heap/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/matrix-operations/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/money-converter/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/numerical-integration/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/prime_numbers/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/radix_sort/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/rb-tree/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/segment-tree/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/stack/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/statistics/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/template_heap/cmake_install.cmake")
  include("C:/Users/sokol-pc/devtools-course-practice/modules/vector3d/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/sokol-pc/devtools-course-practice/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
