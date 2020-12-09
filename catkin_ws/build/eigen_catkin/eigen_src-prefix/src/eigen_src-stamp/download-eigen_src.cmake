if(EXISTS "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen-3.3.4.tar.bz2")
  file("MD5" "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen-3.3.4.tar.bz2" hash_value)
  if("x${hash_value}" STREQUAL "x6e74a04aeab3417120f1bdef6f3b4881")
    return()
  endif()
endif()
message(STATUS "downloading...
     src='https://gitlab.com/libeigen/eigen/-/archive/3.3.4/eigen-3.3.4.tar.bz2'
     dst='/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen-3.3.4.tar.bz2'
     timeout='none'")




file(DOWNLOAD
  "https://gitlab.com/libeigen/eigen/-/archive/3.3.4/eigen-3.3.4.tar.bz2"
  "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen-3.3.4.tar.bz2"
  SHOW_PROGRESS
  # no TIMEOUT
  STATUS status
  LOG log)

list(GET status 0 status_code)
list(GET status 1 status_string)

if(NOT status_code EQUAL 0)
  message(FATAL_ERROR "error: downloading 'https://gitlab.com/libeigen/eigen/-/archive/3.3.4/eigen-3.3.4.tar.bz2' failed
  status_code: ${status_code}
  status_string: ${status_string}
  log: ${log}
")
endif()

message(STATUS "downloading... done")
