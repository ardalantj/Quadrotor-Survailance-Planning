# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ardalan/catkin_ws/build/mav_trajectory_generation

# Include any dependencies generated for this target.
include CMakeFiles/mav_trajectory_generation.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mav_trajectory_generation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mav_trajectory_generation.dir/flags.make

CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.o: CMakeFiles/mav_trajectory_generation.dir/flags.make
CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.o: /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/motion_defines.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardalan/catkin_ws/build/mav_trajectory_generation/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.o -c /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/motion_defines.cpp

CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/motion_defines.cpp > CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.i

CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/motion_defines.cpp -o CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.s

CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.o.requires:

.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.o.requires

CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.o.provides: CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.o.requires
	$(MAKE) -f CMakeFiles/mav_trajectory_generation.dir/build.make CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.o.provides.build
.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.o.provides

CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.o.provides.build: CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.o


CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.o: CMakeFiles/mav_trajectory_generation.dir/flags.make
CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.o: /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/polynomial.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardalan/catkin_ws/build/mav_trajectory_generation/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.o -c /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/polynomial.cpp

CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/polynomial.cpp > CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.i

CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/polynomial.cpp -o CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.s

CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.o.requires:

.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.o.requires

CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.o.provides: CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.o.requires
	$(MAKE) -f CMakeFiles/mav_trajectory_generation.dir/build.make CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.o.provides.build
.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.o.provides

CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.o.provides.build: CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.o


CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.o: CMakeFiles/mav_trajectory_generation.dir/flags.make
CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.o: /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/segment.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardalan/catkin_ws/build/mav_trajectory_generation/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.o -c /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/segment.cpp

CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/segment.cpp > CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.i

CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/segment.cpp -o CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.s

CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.o.requires:

.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.o.requires

CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.o.provides: CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.o.requires
	$(MAKE) -f CMakeFiles/mav_trajectory_generation.dir/build.make CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.o.provides.build
.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.o.provides

CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.o.provides.build: CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.o


CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.o: CMakeFiles/mav_trajectory_generation.dir/flags.make
CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.o: /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/timing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardalan/catkin_ws/build/mav_trajectory_generation/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.o -c /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/timing.cpp

CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/timing.cpp > CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.i

CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/timing.cpp -o CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.s

CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.o.requires:

.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.o.requires

CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.o.provides: CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.o.requires
	$(MAKE) -f CMakeFiles/mav_trajectory_generation.dir/build.make CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.o.provides.build
.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.o.provides

CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.o.provides.build: CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.o


CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.o: CMakeFiles/mav_trajectory_generation.dir/flags.make
CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.o: /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/trajectory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardalan/catkin_ws/build/mav_trajectory_generation/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.o -c /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/trajectory.cpp

CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/trajectory.cpp > CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.i

CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/trajectory.cpp -o CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.s

CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.o.requires:

.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.o.requires

CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.o.provides: CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.o.requires
	$(MAKE) -f CMakeFiles/mav_trajectory_generation.dir/build.make CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.o.provides.build
.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.o.provides

CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.o.provides.build: CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.o


CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.o: CMakeFiles/mav_trajectory_generation.dir/flags.make
CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.o: /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/trajectory_sampling.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardalan/catkin_ws/build/mav_trajectory_generation/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.o -c /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/trajectory_sampling.cpp

CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/trajectory_sampling.cpp > CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.i

CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/trajectory_sampling.cpp -o CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.s

CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.o.requires:

.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.o.requires

CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.o.provides: CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.o.requires
	$(MAKE) -f CMakeFiles/mav_trajectory_generation.dir/build.make CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.o.provides.build
.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.o.provides

CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.o.provides.build: CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.o


CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.o: CMakeFiles/mav_trajectory_generation.dir/flags.make
CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.o: /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/vertex.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardalan/catkin_ws/build/mav_trajectory_generation/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.o -c /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/vertex.cpp

CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/vertex.cpp > CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.i

CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/vertex.cpp -o CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.s

CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.o.requires:

.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.o.requires

CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.o.provides: CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.o.requires
	$(MAKE) -f CMakeFiles/mav_trajectory_generation.dir/build.make CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.o.provides.build
.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.o.provides

CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.o.provides.build: CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.o


CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.o: CMakeFiles/mav_trajectory_generation.dir/flags.make
CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.o: /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/io.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardalan/catkin_ws/build/mav_trajectory_generation/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.o -c /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/io.cpp

CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/io.cpp > CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.i

CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/io.cpp -o CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.s

CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.o.requires:

.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.o.requires

CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.o.provides: CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.o.requires
	$(MAKE) -f CMakeFiles/mav_trajectory_generation.dir/build.make CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.o.provides.build
.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.o.provides

CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.o.provides.build: CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.o


CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.o: CMakeFiles/mav_trajectory_generation.dir/flags.make
CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.o: /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/rpoly/rpoly_ak1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ardalan/catkin_ws/build/mav_trajectory_generation/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.o -c /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/rpoly/rpoly_ak1.cpp

CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/rpoly/rpoly_ak1.cpp > CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.i

CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation/src/rpoly/rpoly_ak1.cpp -o CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.s

CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.o.requires:

.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.o.requires

CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.o.provides: CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.o.requires
	$(MAKE) -f CMakeFiles/mav_trajectory_generation.dir/build.make CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.o.provides.build
.PHONY : CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.o.provides

CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.o.provides.build: CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.o


# Object files for target mav_trajectory_generation
mav_trajectory_generation_OBJECTS = \
"CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.o" \
"CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.o" \
"CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.o" \
"CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.o" \
"CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.o" \
"CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.o" \
"CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.o" \
"CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.o" \
"CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.o"

# External object files for target mav_trajectory_generation
mav_trajectory_generation_EXTERNAL_OBJECTS =

/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.o
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.o
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.o
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.o
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.o
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.o
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.o
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.o
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.o
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: CMakeFiles/mav_trajectory_generation.dir/build.make
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /home/ardalan/catkin_ws/devel/lib/libyaml-cpp0.5.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /home/ardalan/catkin_ws/devel/lib/libeigen_checks.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /home/ardalan/catkin_ws/devel/lib/libglog.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /opt/ros/kinetic/lib/librostime.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /opt/ros/kinetic/lib/libcpp_common.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /home/ardalan/catkin_ws/devel/lib/libnlopt_wrap.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /home/ardalan/catkin_ws/devel/lib/libyaml-cpp0.5.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /home/ardalan/catkin_ws/devel/lib/libeigen_checks.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /home/ardalan/catkin_ws/devel/lib/libglog.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /opt/ros/kinetic/lib/librostime.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /opt/ros/kinetic/lib/libcpp_common.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: /home/ardalan/catkin_ws/devel/lib/libnlopt_wrap.so
/home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so: CMakeFiles/mav_trajectory_generation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ardalan/catkin_ws/build/mav_trajectory_generation/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX shared library /home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mav_trajectory_generation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mav_trajectory_generation.dir/build: /home/ardalan/catkin_ws/devel/lib/libmav_trajectory_generation.so

.PHONY : CMakeFiles/mav_trajectory_generation.dir/build

CMakeFiles/mav_trajectory_generation.dir/requires: CMakeFiles/mav_trajectory_generation.dir/src/motion_defines.cpp.o.requires
CMakeFiles/mav_trajectory_generation.dir/requires: CMakeFiles/mav_trajectory_generation.dir/src/polynomial.cpp.o.requires
CMakeFiles/mav_trajectory_generation.dir/requires: CMakeFiles/mav_trajectory_generation.dir/src/segment.cpp.o.requires
CMakeFiles/mav_trajectory_generation.dir/requires: CMakeFiles/mav_trajectory_generation.dir/src/timing.cpp.o.requires
CMakeFiles/mav_trajectory_generation.dir/requires: CMakeFiles/mav_trajectory_generation.dir/src/trajectory.cpp.o.requires
CMakeFiles/mav_trajectory_generation.dir/requires: CMakeFiles/mav_trajectory_generation.dir/src/trajectory_sampling.cpp.o.requires
CMakeFiles/mav_trajectory_generation.dir/requires: CMakeFiles/mav_trajectory_generation.dir/src/vertex.cpp.o.requires
CMakeFiles/mav_trajectory_generation.dir/requires: CMakeFiles/mav_trajectory_generation.dir/src/io.cpp.o.requires
CMakeFiles/mav_trajectory_generation.dir/requires: CMakeFiles/mav_trajectory_generation.dir/src/rpoly/rpoly_ak1.cpp.o.requires

.PHONY : CMakeFiles/mav_trajectory_generation.dir/requires

CMakeFiles/mav_trajectory_generation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mav_trajectory_generation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mav_trajectory_generation.dir/clean

CMakeFiles/mav_trajectory_generation.dir/depend:
	cd /home/ardalan/catkin_ws/build/mav_trajectory_generation && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation /home/ardalan/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation /home/ardalan/catkin_ws/build/mav_trajectory_generation /home/ardalan/catkin_ws/build/mav_trajectory_generation /home/ardalan/catkin_ws/build/mav_trajectory_generation/CMakeFiles/mav_trajectory_generation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mav_trajectory_generation.dir/depend

