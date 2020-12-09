set(file "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen-3.3.4.tar.bz2")
message(STATUS "verifying file...
     file='${file}'")
set(expect_value "6e74a04aeab3417120f1bdef6f3b4881")
set(attempt 0)
set(succeeded 0)
while(${attempt} LESS 3 OR ${attempt} EQUAL 3 AND NOT ${succeeded})
  file(MD5 "${file}" actual_value)
  if("${actual_value}" STREQUAL "${expect_value}")
    set(succeeded 1)
  elseif(${attempt} LESS 3)
    message(STATUS "MD5 hash of ${file}
does not match expected value
  expected: ${expect_value}
    actual: ${actual_value}
Retrying download.
")
    file(REMOVE "${file}")
    execute_process(COMMAND ${CMAKE_COMMAND} -P "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src-stamp/download-eigen_src.cmake")
  endif()
  math(EXPR attempt "${attempt} + 1")
endwhile()

if(${succeeded})
  message(STATUS "verifying file... done")
else()
  message(FATAL_ERROR "error: MD5 hash of
  ${file}
does not match expected value
  expected: ${expect_value}
    actual: ${actual_value}
")
endif()
