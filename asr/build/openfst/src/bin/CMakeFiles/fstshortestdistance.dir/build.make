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
CMAKE_SOURCE_DIR = /root/FunASR/runtime/websocket

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/FunASR/runtime/websocket/build

# Include any dependencies generated for this target.
include openfst/src/bin/CMakeFiles/fstshortestdistance.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include openfst/src/bin/CMakeFiles/fstshortestdistance.dir/compiler_depend.make

# Include the progress variables for this target.
include openfst/src/bin/CMakeFiles/fstshortestdistance.dir/progress.make

# Include the compile flags for this target's objects.
include openfst/src/bin/CMakeFiles/fstshortestdistance.dir/flags.make

openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance-main.cc.o: openfst/src/bin/CMakeFiles/fstshortestdistance.dir/flags.make
openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance-main.cc.o: /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstshortestdistance-main.cc
openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance-main.cc.o: openfst/src/bin/CMakeFiles/fstshortestdistance.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance-main.cc.o"
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance-main.cc.o -MF CMakeFiles/fstshortestdistance.dir/fstshortestdistance-main.cc.o.d -o CMakeFiles/fstshortestdistance.dir/fstshortestdistance-main.cc.o -c /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstshortestdistance-main.cc

openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance-main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fstshortestdistance.dir/fstshortestdistance-main.cc.i"
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstshortestdistance-main.cc > CMakeFiles/fstshortestdistance.dir/fstshortestdistance-main.cc.i

openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance-main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fstshortestdistance.dir/fstshortestdistance-main.cc.s"
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstshortestdistance-main.cc -o CMakeFiles/fstshortestdistance.dir/fstshortestdistance-main.cc.s

openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance.cc.o: openfst/src/bin/CMakeFiles/fstshortestdistance.dir/flags.make
openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance.cc.o: /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstshortestdistance.cc
openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance.cc.o: openfst/src/bin/CMakeFiles/fstshortestdistance.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance.cc.o"
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance.cc.o -MF CMakeFiles/fstshortestdistance.dir/fstshortestdistance.cc.o.d -o CMakeFiles/fstshortestdistance.dir/fstshortestdistance.cc.o -c /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstshortestdistance.cc

openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fstshortestdistance.dir/fstshortestdistance.cc.i"
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstshortestdistance.cc > CMakeFiles/fstshortestdistance.dir/fstshortestdistance.cc.i

openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fstshortestdistance.dir/fstshortestdistance.cc.s"
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstshortestdistance.cc -o CMakeFiles/fstshortestdistance.dir/fstshortestdistance.cc.s

# Object files for target fstshortestdistance
fstshortestdistance_OBJECTS = \
"CMakeFiles/fstshortestdistance.dir/fstshortestdistance-main.cc.o" \
"CMakeFiles/fstshortestdistance.dir/fstshortestdistance.cc.o"

# External object files for target fstshortestdistance
fstshortestdistance_EXTERNAL_OBJECTS =

bin/fstshortestdistance: openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance-main.cc.o
bin/fstshortestdistance: openfst/src/bin/CMakeFiles/fstshortestdistance.dir/fstshortestdistance.cc.o
bin/fstshortestdistance: openfst/src/bin/CMakeFiles/fstshortestdistance.dir/build.make
bin/fstshortestdistance: openfst/src/script/libfstscript.so.16
bin/fstshortestdistance: openfst/src/lib/libfst.so.16
bin/fstshortestdistance: glog/libglog.so.0.7.0
bin/fstshortestdistance: gflags/libgflags_nothreads.a
bin/fstshortestdistance: openfst/src/bin/CMakeFiles/fstshortestdistance.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../bin/fstshortestdistance"
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fstshortestdistance.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
openfst/src/bin/CMakeFiles/fstshortestdistance.dir/build: bin/fstshortestdistance
.PHONY : openfst/src/bin/CMakeFiles/fstshortestdistance.dir/build

openfst/src/bin/CMakeFiles/fstshortestdistance.dir/clean:
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && $(CMAKE_COMMAND) -P CMakeFiles/fstshortestdistance.dir/cmake_clean.cmake
.PHONY : openfst/src/bin/CMakeFiles/fstshortestdistance.dir/clean

openfst/src/bin/CMakeFiles/fstshortestdistance.dir/depend:
	cd /root/FunASR/runtime/websocket/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/FunASR/runtime/websocket /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin /root/FunASR/runtime/websocket/build /root/FunASR/runtime/websocket/build/openfst/src/bin /root/FunASR/runtime/websocket/build/openfst/src/bin/CMakeFiles/fstshortestdistance.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : openfst/src/bin/CMakeFiles/fstshortestdistance.dir/depend
