if("11607eb5bf1258641d80f7051e7cf09e317b4746" STREQUAL "")
  message(FATAL_ERROR "Tag for git checkout should not be empty.")
endif()

set(run 0)

if("/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-stamp/yaml_cpp_src-gitinfo.txt" IS_NEWER_THAN "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-stamp/yaml_cpp_src-gitclone-lastrun.txt")
  set(run 1)
endif()

if(NOT run)
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-stamp/yaml_cpp_src-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src'")
endif()

# try the clone 3 times incase there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git" clone --origin "origin" "https://github.com/jbeder/yaml-cpp" "yaml_cpp_src"
    WORKING_DIRECTORY "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/jbeder/yaml-cpp'")
endif()

execute_process(
  COMMAND "/usr/bin/git" checkout 11607eb5bf1258641d80f7051e7cf09e317b4746
  WORKING_DIRECTORY "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '11607eb5bf1258641d80f7051e7cf09e317b4746'")
endif()

execute_process(
  COMMAND "/usr/bin/git" submodule init 
  WORKING_DIRECTORY "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to init submodules in: '/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src'")
endif()

execute_process(
  COMMAND "/usr/bin/git" submodule update --recursive 
  WORKING_DIRECTORY "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-stamp/yaml_cpp_src-gitinfo.txt"
    "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-stamp/yaml_cpp_src-gitclone-lastrun.txt"
  WORKING_DIRECTORY "/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/ardalan/catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-stamp/yaml_cpp_src-gitclone-lastrun.txt'")
endif()

