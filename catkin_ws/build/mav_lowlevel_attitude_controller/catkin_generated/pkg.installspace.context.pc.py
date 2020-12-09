# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "mav_msgs;std_msgs;cmake_modules;geometry_msgs;roscpp;dynamic_reconfigure;tf".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lpid_attitude_controller_lib".split(';') if "-lpid_attitude_controller_lib" != "" else []
PROJECT_NAME = "mav_lowlevel_attitude_controller"
PROJECT_SPACE_DIR = "/home/ardalan/catkin_ws/install"
PROJECT_VERSION = "0.0.0"
