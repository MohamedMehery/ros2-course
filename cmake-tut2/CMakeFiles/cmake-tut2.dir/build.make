# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2

# Include any dependencies generated for this target.
include CMakeFiles/cmake-tut2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cmake-tut2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cmake-tut2.dir/flags.make

CMakeFiles/cmake-tut2.dir/src/mylib.cpp.o: CMakeFiles/cmake-tut2.dir/flags.make
CMakeFiles/cmake-tut2.dir/src/mylib.cpp.o: src/mylib.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cmake-tut2.dir/src/mylib.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmake-tut2.dir/src/mylib.cpp.o -c /home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2/src/mylib.cpp

CMakeFiles/cmake-tut2.dir/src/mylib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmake-tut2.dir/src/mylib.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2/src/mylib.cpp > CMakeFiles/cmake-tut2.dir/src/mylib.cpp.i

CMakeFiles/cmake-tut2.dir/src/mylib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmake-tut2.dir/src/mylib.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2/src/mylib.cpp -o CMakeFiles/cmake-tut2.dir/src/mylib.cpp.s

CMakeFiles/cmake-tut2.dir/src/mylib.cpp.o.requires:

.PHONY : CMakeFiles/cmake-tut2.dir/src/mylib.cpp.o.requires

CMakeFiles/cmake-tut2.dir/src/mylib.cpp.o.provides: CMakeFiles/cmake-tut2.dir/src/mylib.cpp.o.requires
	$(MAKE) -f CMakeFiles/cmake-tut2.dir/build.make CMakeFiles/cmake-tut2.dir/src/mylib.cpp.o.provides.build
.PHONY : CMakeFiles/cmake-tut2.dir/src/mylib.cpp.o.provides

CMakeFiles/cmake-tut2.dir/src/mylib.cpp.o.provides.build: CMakeFiles/cmake-tut2.dir/src/mylib.cpp.o


CMakeFiles/cmake-tut2.dir/main.cpp.o: CMakeFiles/cmake-tut2.dir/flags.make
CMakeFiles/cmake-tut2.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cmake-tut2.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmake-tut2.dir/main.cpp.o -c /home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2/main.cpp

CMakeFiles/cmake-tut2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmake-tut2.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2/main.cpp > CMakeFiles/cmake-tut2.dir/main.cpp.i

CMakeFiles/cmake-tut2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmake-tut2.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2/main.cpp -o CMakeFiles/cmake-tut2.dir/main.cpp.s

CMakeFiles/cmake-tut2.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/cmake-tut2.dir/main.cpp.o.requires

CMakeFiles/cmake-tut2.dir/main.cpp.o.provides: CMakeFiles/cmake-tut2.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/cmake-tut2.dir/build.make CMakeFiles/cmake-tut2.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/cmake-tut2.dir/main.cpp.o.provides

CMakeFiles/cmake-tut2.dir/main.cpp.o.provides.build: CMakeFiles/cmake-tut2.dir/main.cpp.o


# Object files for target cmake-tut2
cmake__tut2_OBJECTS = \
"CMakeFiles/cmake-tut2.dir/src/mylib.cpp.o" \
"CMakeFiles/cmake-tut2.dir/main.cpp.o"

# External object files for target cmake-tut2
cmake__tut2_EXTERNAL_OBJECTS =

cmake-tut2: CMakeFiles/cmake-tut2.dir/src/mylib.cpp.o
cmake-tut2: CMakeFiles/cmake-tut2.dir/main.cpp.o
cmake-tut2: CMakeFiles/cmake-tut2.dir/build.make
cmake-tut2: CMakeFiles/cmake-tut2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable cmake-tut2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cmake-tut2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cmake-tut2.dir/build: cmake-tut2

.PHONY : CMakeFiles/cmake-tut2.dir/build

CMakeFiles/cmake-tut2.dir/requires: CMakeFiles/cmake-tut2.dir/src/mylib.cpp.o.requires
CMakeFiles/cmake-tut2.dir/requires: CMakeFiles/cmake-tut2.dir/main.cpp.o.requires

.PHONY : CMakeFiles/cmake-tut2.dir/requires

CMakeFiles/cmake-tut2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cmake-tut2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cmake-tut2.dir/clean

CMakeFiles/cmake-tut2.dir/depend:
	cd /home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2 /home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2 /home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2 /home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2 /home/mohamedmehery/dev_ws/src/tutorial_interfaces/cmake-tut2/CMakeFiles/cmake-tut2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cmake-tut2.dir/depend

