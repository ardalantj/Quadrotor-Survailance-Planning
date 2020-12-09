# Install script for directory: /home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ardalan/catkin_ws/devel")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}/home/ardalan/catkin_ws/devel/lib/libyaml-cpp0.5.so.0.5.3"
      "$ENV{DESTDIR}/home/ardalan/catkin_ws/devel/lib/libyaml-cpp0.5.so.0.5"
      "$ENV{DESTDIR}/home/ardalan/catkin_ws/devel/lib/libyaml-cpp0.5.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ardalan/catkin_ws/devel/lib/libyaml-cpp0.5.so.0.5.3;/home/ardalan/catkin_ws/devel/lib/libyaml-cpp0.5.so.0.5;/home/ardalan/catkin_ws/devel/lib/libyaml-cpp0.5.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ardalan/catkin_ws/devel/lib" TYPE SHARED_LIBRARY FILES
    "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build/libyaml-cpp0.5.so.0.5.3"
    "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build/libyaml-cpp0.5.so.0.5"
    "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build/libyaml-cpp0.5.so"
    )
  foreach(file
      "$ENV{DESTDIR}/home/ardalan/catkin_ws/devel/lib/libyaml-cpp0.5.so.0.5.3"
      "$ENV{DESTDIR}/home/ardalan/catkin_ws/devel/lib/libyaml-cpp0.5.so.0.5"
      "$ENV{DESTDIR}/home/ardalan/catkin_ws/devel/lib/libyaml-cpp0.5.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ardalan/catkin_ws/devel/include/yaml-cpp/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ardalan/catkin_ws/devel/include/yaml-cpp" TYPE DIRECTORY FILES "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ardalan/catkin_ws/devel/lib/cmake/yaml-cpp/yaml-cpp0.5-config.cmake;/home/ardalan/catkin_ws/devel/lib/cmake/yaml-cpp/yaml-cpp0.5-config-version.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ardalan/catkin_ws/devel/lib/cmake/yaml-cpp" TYPE FILE FILES
    "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build/CMakeFiles/yaml-cpp0.5-config.cmake"
    "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build/yaml-cpp0.5-config-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}/home/ardalan/catkin_ws/devel/lib/cmake/yaml-cpp/yaml-cpp0.5-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/home/ardalan/catkin_ws/devel/lib/cmake/yaml-cpp/yaml-cpp0.5-targets.cmake"
         "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build/CMakeFiles/Export/_home/ardalan/catkin_ws/devel/lib/cmake/yaml-cpp/yaml-cpp0.5-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/home/ardalan/catkin_ws/devel/lib/cmake/yaml-cpp/yaml-cpp0.5-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/home/ardalan/catkin_ws/devel/lib/cmake/yaml-cpp/yaml-cpp0.5-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ardalan/catkin_ws/devel/lib/cmake/yaml-cpp/yaml-cpp0.5-targets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ardalan/catkin_ws/devel/lib/cmake/yaml-cpp" TYPE FILE FILES "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build/CMakeFiles/Export/_home/ardalan/catkin_ws/devel/lib/cmake/yaml-cpp/yaml-cpp0.5-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/home/ardalan/catkin_ws/devel/lib/cmake/yaml-cpp/yaml-cpp0.5-targets-release.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/home/ardalan/catkin_ws/devel/lib/cmake/yaml-cpp" TYPE FILE FILES "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build/CMakeFiles/Export/_home/ardalan/catkin_ws/devel/lib/cmake/yaml-cpp/yaml-cpp0.5-targets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ardalan/catkin_ws/devel/lib/pkgconfig/yaml-cpp0.5.pc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ardalan/catkin_ws/devel/lib/pkgconfig" TYPE FILE FILES "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build/yaml-cpp0.5.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build/test/cmake_install.cmake")
  include("/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build/util/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
