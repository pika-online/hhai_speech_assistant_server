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
include kaldi/CMakeFiles/fstminimizeencoded.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include kaldi/CMakeFiles/fstminimizeencoded.dir/compiler_depend.make

# Include the progress variables for this target.
include kaldi/CMakeFiles/fstminimizeencoded.dir/progress.make

# Include the compile flags for this target's objects.
include kaldi/CMakeFiles/fstminimizeencoded.dir/flags.make

kaldi/CMakeFiles/fstminimizeencoded.dir/fstbin/fstminimizeencoded.cc.o: kaldi/CMakeFiles/fstminimizeencoded.dir/flags.make
kaldi/CMakeFiles/fstminimizeencoded.dir/fstbin/fstminimizeencoded.cc.o: /root/FunASR/runtime/onnxruntime/third_party/kaldi/fstbin/fstminimizeencoded.cc
kaldi/CMakeFiles/fstminimizeencoded.dir/fstbin/fstminimizeencoded.cc.o: kaldi/CMakeFiles/fstminimizeencoded.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object kaldi/CMakeFiles/fstminimizeencoded.dir/fstbin/fstminimizeencoded.cc.o"
	cd /root/FunASR/runtime/websocket/build/kaldi && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT kaldi/CMakeFiles/fstminimizeencoded.dir/fstbin/fstminimizeencoded.cc.o -MF CMakeFiles/fstminimizeencoded.dir/fstbin/fstminimizeencoded.cc.o.d -o CMakeFiles/fstminimizeencoded.dir/fstbin/fstminimizeencoded.cc.o -c /root/FunASR/runtime/onnxruntime/third_party/kaldi/fstbin/fstminimizeencoded.cc

kaldi/CMakeFiles/fstminimizeencoded.dir/fstbin/fstminimizeencoded.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fstminimizeencoded.dir/fstbin/fstminimizeencoded.cc.i"
	cd /root/FunASR/runtime/websocket/build/kaldi && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/FunASR/runtime/onnxruntime/third_party/kaldi/fstbin/fstminimizeencoded.cc > CMakeFiles/fstminimizeencoded.dir/fstbin/fstminimizeencoded.cc.i

kaldi/CMakeFiles/fstminimizeencoded.dir/fstbin/fstminimizeencoded.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fstminimizeencoded.dir/fstbin/fstminimizeencoded.cc.s"
	cd /root/FunASR/runtime/websocket/build/kaldi && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/FunASR/runtime/onnxruntime/third_party/kaldi/fstbin/fstminimizeencoded.cc -o CMakeFiles/fstminimizeencoded.dir/fstbin/fstminimizeencoded.cc.s

kaldi/CMakeFiles/fstminimizeencoded.dir/fstext/kaldi-fst-io.cc.o: kaldi/CMakeFiles/fstminimizeencoded.dir/flags.make
kaldi/CMakeFiles/fstminimizeencoded.dir/fstext/kaldi-fst-io.cc.o: /root/FunASR/runtime/onnxruntime/third_party/kaldi/fstext/kaldi-fst-io.cc
kaldi/CMakeFiles/fstminimizeencoded.dir/fstext/kaldi-fst-io.cc.o: kaldi/CMakeFiles/fstminimizeencoded.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object kaldi/CMakeFiles/fstminimizeencoded.dir/fstext/kaldi-fst-io.cc.o"
	cd /root/FunASR/runtime/websocket/build/kaldi && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT kaldi/CMakeFiles/fstminimizeencoded.dir/fstext/kaldi-fst-io.cc.o -MF CMakeFiles/fstminimizeencoded.dir/fstext/kaldi-fst-io.cc.o.d -o CMakeFiles/fstminimizeencoded.dir/fstext/kaldi-fst-io.cc.o -c /root/FunASR/runtime/onnxruntime/third_party/kaldi/fstext/kaldi-fst-io.cc

kaldi/CMakeFiles/fstminimizeencoded.dir/fstext/kaldi-fst-io.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fstminimizeencoded.dir/fstext/kaldi-fst-io.cc.i"
	cd /root/FunASR/runtime/websocket/build/kaldi && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/FunASR/runtime/onnxruntime/third_party/kaldi/fstext/kaldi-fst-io.cc > CMakeFiles/fstminimizeencoded.dir/fstext/kaldi-fst-io.cc.i

kaldi/CMakeFiles/fstminimizeencoded.dir/fstext/kaldi-fst-io.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fstminimizeencoded.dir/fstext/kaldi-fst-io.cc.s"
	cd /root/FunASR/runtime/websocket/build/kaldi && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/FunASR/runtime/onnxruntime/third_party/kaldi/fstext/kaldi-fst-io.cc -o CMakeFiles/fstminimizeencoded.dir/fstext/kaldi-fst-io.cc.s

# Object files for target fstminimizeencoded
fstminimizeencoded_OBJECTS = \
"CMakeFiles/fstminimizeencoded.dir/fstbin/fstminimizeencoded.cc.o" \
"CMakeFiles/fstminimizeencoded.dir/fstext/kaldi-fst-io.cc.o"

# External object files for target fstminimizeencoded
fstminimizeencoded_EXTERNAL_OBJECTS =

bin/fstminimizeencoded: kaldi/CMakeFiles/fstminimizeencoded.dir/fstbin/fstminimizeencoded.cc.o
bin/fstminimizeencoded: kaldi/CMakeFiles/fstminimizeencoded.dir/fstext/kaldi-fst-io.cc.o
bin/fstminimizeencoded: kaldi/CMakeFiles/fstminimizeencoded.dir/build.make
bin/fstminimizeencoded: kaldi/libkaldi-util.a
bin/fstminimizeencoded: openfst/src/lib/libfst.so.16
bin/fstminimizeencoded: glog/libglog.so.0.7.0
bin/fstminimizeencoded: gflags/libgflags_nothreads.a
bin/fstminimizeencoded: kaldi/CMakeFiles/fstminimizeencoded.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/fstminimizeencoded"
	cd /root/FunASR/runtime/websocket/build/kaldi && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fstminimizeencoded.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
kaldi/CMakeFiles/fstminimizeencoded.dir/build: bin/fstminimizeencoded
.PHONY : kaldi/CMakeFiles/fstminimizeencoded.dir/build

kaldi/CMakeFiles/fstminimizeencoded.dir/clean:
	cd /root/FunASR/runtime/websocket/build/kaldi && $(CMAKE_COMMAND) -P CMakeFiles/fstminimizeencoded.dir/cmake_clean.cmake
.PHONY : kaldi/CMakeFiles/fstminimizeencoded.dir/clean

kaldi/CMakeFiles/fstminimizeencoded.dir/depend:
	cd /root/FunASR/runtime/websocket/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/FunASR/runtime/websocket /root/FunASR/runtime/onnxruntime/third_party/kaldi /root/FunASR/runtime/websocket/build /root/FunASR/runtime/websocket/build/kaldi /root/FunASR/runtime/websocket/build/kaldi/CMakeFiles/fstminimizeencoded.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : kaldi/CMakeFiles/fstminimizeencoded.dir/depend

