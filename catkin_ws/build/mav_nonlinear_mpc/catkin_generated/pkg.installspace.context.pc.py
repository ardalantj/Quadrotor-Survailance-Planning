# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "mav_msgs;std_msgs;cmake_modules;roscpp;dynamic_reconfigure;tf;mav_control_interface;mav_disturbance_observer".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lmav_nonlinear_mpc_lib".split(';') if "-lmav_nonlinear_mpc_lib" != "" else []
PROJECT_NAME = "mav_nonlinear_mpc"
PROJECT_SPACE_DIR = "/home/ardalan/catkin_ws/install"
PROJECT_VERSION = "1.0.0"
