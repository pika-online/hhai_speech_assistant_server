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
include openfst/src/bin/CMakeFiles/fstdeterminize.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include openfst/src/bin/CMakeFiles/fstdeterminize.dir/compiler_depend.make

# Include the progress variables for this target.
include openfst/src/bin/CMakeFiles/fstdeterminize.dir/progress.make

# Include the compile flags for this target's objects.
include openfst/src/bin/CMakeFiles/fstdeterminize.dir/flags.make

openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize-main.cc.o: openfst/src/bin/CMakeFiles/fstdeterminize.dir/flags.make
openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize-main.cc.o: /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstdeterminize-main.cc
openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize-main.cc.o: openfst/src/bin/CMakeFiles/fstdeterminize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize-main.cc.o"
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize-main.cc.o -MF CMakeFiles/fstdeterminize.dir/fstdeterminize-main.cc.o.d -o CMakeFiles/fstdeterminize.dir/fstdeterminize-main.cc.o -c /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstdeterminize-main.cc

openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize-main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fstdeterminize.dir/fstdeterminize-main.cc.i"
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstdeterminize-main.cc > CMakeFiles/fstdeterminize.dir/fstdeterminize-main.cc.i

openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize-main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fstdeterminize.dir/fstdeterminize-main.cc.s"
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstdeterminize-main.cc -o CMakeFiles/fstdeterminize.dir/fstdeterminize-main.cc.s

openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize.cc.o: openfst/src/bin/CMakeFiles/fstdeterminize.dir/flags.make
openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize.cc.o: /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstdeterminize.cc
openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize.cc.o: openfst/src/bin/CMakeFiles/fstdeterminize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize.cc.o"
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize.cc.o -MF CMakeFiles/fstdeterminize.dir/fstdeterminize.cc.o.d -o CMakeFiles/fstdeterminize.dir/fstdeterminize.cc.o -c /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstdeterminize.cc

openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fstdeterminize.dir/fstdeterminize.cc.i"
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstdeterminize.cc > CMakeFiles/fstdeterminize.dir/fstdeterminize.cc.i

openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fstdeterminize.dir/fstdeterminize.cc.s"
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin/fstdeterminize.cc -o CMakeFiles/fstdeterminize.dir/fstdeterminize.cc.s

# Object files for target fstdeterminize
fstdeterminize_OBJECTS = \
"CMakeFiles/fstdeterminize.dir/fstdeterminize-main.cc.o" \
"CMakeFiles/fstdeterminize.dir/fstdeterminize.cc.o"

# External object files for target fstdeterminize
fstdeterminize_EXTERNAL_OBJECTS =

bin/fstdeterminize: openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize-main.cc.o
bin/fstdeterminize: openfst/src/bin/CMakeFiles/fstdeterminize.dir/fstdeterminize.cc.o
bin/fstdeterminize: openfst/src/bin/CMakeFiles/fstdeterminize.dir/build.make
bin/fstdeterminize: openfst/src/script/libfstscript.so.16
bin/fstdeterminize: openfst/src/lib/libfst.so.16
bin/fstdeterminize: glog/libglog.so.0.7.0
bin/fstdeterminize: gflags/libgflags_nothreads.a
bin/fstdeterminize: openfst/src/bin/CMakeFiles/fstdeterminize.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../bin/fstdeterminize"
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fstdeterminize.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
openfst/src/bin/CMakeFiles/fstdeterminize.dir/build: bin/fstdeterminize
.PHONY : openfst/src/bin/CMakeFiles/fstdeterminize.dir/build

openfst/src/bin/CMakeFiles/fstdeterminize.dir/clean:
	cd /root/FunASR/runtime/websocket/build/openfst/src/bin && $(CMAKE_COMMAND) -P CMakeFiles/fstdeterminize.dir/cmake_clean.cmake
.PHONY : openfst/src/bin/CMakeFiles/fstdeterminize.dir/clean

openfst/src/bin/CMakeFiles/fstdeterminize.dir/depend:
	cd /root/FunASR/runtime/websocket/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/FunASR/runtime/websocket /root/FunASR/runtime/onnxruntime/third_party/openfst/src/bin /root/FunASR/runtime/websocket/build /root/FunASR/runtime/websocket/build/openfst/src/bin /root/FunASR/runtime/websocket/build/openfst/src/bin/CMakeFiles/fstdeterminize.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : openfst/src/bin/CMakeFiles/fstdeterminize.dir/depend

