# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jelly/ros2_ws/src/fmt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jelly/ros2_ws/build/FMT

# Include any dependencies generated for this target.
include test/CMakeFiles/ostream-test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/ostream-test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/ostream-test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/ostream-test.dir/flags.make

test/CMakeFiles/ostream-test.dir/ostream-test.cc.o: test/CMakeFiles/ostream-test.dir/flags.make
test/CMakeFiles/ostream-test.dir/ostream-test.cc.o: /home/jelly/ros2_ws/src/fmt/test/ostream-test.cc
test/CMakeFiles/ostream-test.dir/ostream-test.cc.o: test/CMakeFiles/ostream-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jelly/ros2_ws/build/FMT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/ostream-test.dir/ostream-test.cc.o"
	cd /home/jelly/ros2_ws/build/FMT/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/ostream-test.dir/ostream-test.cc.o -MF CMakeFiles/ostream-test.dir/ostream-test.cc.o.d -o CMakeFiles/ostream-test.dir/ostream-test.cc.o -c /home/jelly/ros2_ws/src/fmt/test/ostream-test.cc

test/CMakeFiles/ostream-test.dir/ostream-test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ostream-test.dir/ostream-test.cc.i"
	cd /home/jelly/ros2_ws/build/FMT/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jelly/ros2_ws/src/fmt/test/ostream-test.cc > CMakeFiles/ostream-test.dir/ostream-test.cc.i

test/CMakeFiles/ostream-test.dir/ostream-test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ostream-test.dir/ostream-test.cc.s"
	cd /home/jelly/ros2_ws/build/FMT/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jelly/ros2_ws/src/fmt/test/ostream-test.cc -o CMakeFiles/ostream-test.dir/ostream-test.cc.s

# Object files for target ostream-test
ostream__test_OBJECTS = \
"CMakeFiles/ostream-test.dir/ostream-test.cc.o"

# External object files for target ostream-test
ostream__test_EXTERNAL_OBJECTS =

bin/ostream-test: test/CMakeFiles/ostream-test.dir/ostream-test.cc.o
bin/ostream-test: test/CMakeFiles/ostream-test.dir/build.make
bin/ostream-test: test/libtest-main.a
bin/ostream-test: libfmt.a
bin/ostream-test: test/gtest/libgtest.a
bin/ostream-test: test/CMakeFiles/ostream-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jelly/ros2_ws/build/FMT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/ostream-test"
	cd /home/jelly/ros2_ws/build/FMT/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ostream-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/ostream-test.dir/build: bin/ostream-test
.PHONY : test/CMakeFiles/ostream-test.dir/build

test/CMakeFiles/ostream-test.dir/clean:
	cd /home/jelly/ros2_ws/build/FMT/test && $(CMAKE_COMMAND) -P CMakeFiles/ostream-test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/ostream-test.dir/clean

test/CMakeFiles/ostream-test.dir/depend:
	cd /home/jelly/ros2_ws/build/FMT && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jelly/ros2_ws/src/fmt /home/jelly/ros2_ws/src/fmt/test /home/jelly/ros2_ws/build/FMT /home/jelly/ros2_ws/build/FMT/test /home/jelly/ros2_ws/build/FMT/test/CMakeFiles/ostream-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/ostream-test.dir/depend

