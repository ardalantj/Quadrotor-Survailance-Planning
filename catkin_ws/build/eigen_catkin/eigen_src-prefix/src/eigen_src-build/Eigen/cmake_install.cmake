# Install script for directory: /home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/Geometry"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/PaStiXSupport"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/Eigenvalues"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/Eigen"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/QtAlignedMalloc"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/CholmodSupport"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/SparseCore"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/Core"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/StdList"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/MetisSupport"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/Jacobi"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/SparseQR"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/SPQRSupport"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/UmfPackSupport"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/SparseLU"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/Cholesky"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/LU"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/OrderingMethods"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/Dense"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/IterativeLinearSolvers"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/StdDeque"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/SuperLUSupport"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/SVD"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/Sparse"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/PardisoSupport"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/QR"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/StdVector"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/SparseCholesky"
    "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/Householder"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE DIRECTORY FILES "/home/ardalan/catkin_ws/build/eigen_catkin/eigen_src-prefix/src/eigen_src/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

