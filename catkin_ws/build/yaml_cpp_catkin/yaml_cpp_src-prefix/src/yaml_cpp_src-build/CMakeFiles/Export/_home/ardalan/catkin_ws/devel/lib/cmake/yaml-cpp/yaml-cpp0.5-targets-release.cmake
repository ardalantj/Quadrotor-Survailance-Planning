#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "yaml-cpp0.5" for configuration "Release"
set_property(TARGET yaml-cpp0.5 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(yaml-cpp0.5 PROPERTIES
  IMPORTED_LOCATION_RELEASE "/home/ardalan/catkin_ws/devel/lib/libyaml-cpp0.5.so.0.5.3"
  IMPORTED_SONAME_RELEASE "libyaml-cpp0.5.so.0.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS yaml-cpp0.5 )
list(APPEND _IMPORT_CHECK_FILES_FOR_yaml-cpp0.5 "/home/ardalan/catkin_ws/devel/lib/libyaml-cpp0.5.so.0.5.3" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
