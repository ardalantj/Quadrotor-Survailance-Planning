# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "mav_msgs;roscpp;cmake_modules;tf;mav_control_interface;mav_disturbance_observer;message_runtime".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lmav_linear_mpc;-lcvxgen_solver".split(';') if "-lmav_linear_mpc;-lcvxgen_solver" != "" else []
PROJECT_NAME = "mav_linear_mpc"
PROJECT_SPACE_DIR = "/home/ardalan/catkin_ws/install"
PROJECT_VERSION = "1.0.0"
