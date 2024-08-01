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
include csrc/CMakeFiles/csrc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include csrc/CMakeFiles/csrc.dir/compiler_depend.make

# Include the progress variables for this target.
include csrc/CMakeFiles/csrc.dir/progress.make

# Include the compile flags for this target's objects.
include csrc/CMakeFiles/csrc.dir/flags.make

csrc/CMakeFiles/csrc.dir/feature-fbank.cc.o: csrc/CMakeFiles/csrc.dir/flags.make
csrc/CMakeFiles/csrc.dir/feature-fbank.cc.o: /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/feature-fbank.cc
csrc/CMakeFiles/csrc.dir/feature-fbank.cc.o: csrc/CMakeFiles/csrc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object csrc/CMakeFiles/csrc.dir/feature-fbank.cc.o"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT csrc/CMakeFiles/csrc.dir/feature-fbank.cc.o -MF CMakeFiles/csrc.dir/feature-fbank.cc.o.d -o CMakeFiles/csrc.dir/feature-fbank.cc.o -c /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/feature-fbank.cc

csrc/CMakeFiles/csrc.dir/feature-fbank.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csrc.dir/feature-fbank.cc.i"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/feature-fbank.cc > CMakeFiles/csrc.dir/feature-fbank.cc.i

csrc/CMakeFiles/csrc.dir/feature-fbank.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csrc.dir/feature-fbank.cc.s"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/feature-fbank.cc -o CMakeFiles/csrc.dir/feature-fbank.cc.s

csrc/CMakeFiles/csrc.dir/feature-functions.cc.o: csrc/CMakeFiles/csrc.dir/flags.make
csrc/CMakeFiles/csrc.dir/feature-functions.cc.o: /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/feature-functions.cc
csrc/CMakeFiles/csrc.dir/feature-functions.cc.o: csrc/CMakeFiles/csrc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object csrc/CMakeFiles/csrc.dir/feature-functions.cc.o"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT csrc/CMakeFiles/csrc.dir/feature-functions.cc.o -MF CMakeFiles/csrc.dir/feature-functions.cc.o.d -o CMakeFiles/csrc.dir/feature-functions.cc.o -c /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/feature-functions.cc

csrc/CMakeFiles/csrc.dir/feature-functions.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csrc.dir/feature-functions.cc.i"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/feature-functions.cc > CMakeFiles/csrc.dir/feature-functions.cc.i

csrc/CMakeFiles/csrc.dir/feature-functions.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csrc.dir/feature-functions.cc.s"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/feature-functions.cc -o CMakeFiles/csrc.dir/feature-functions.cc.s

csrc/CMakeFiles/csrc.dir/feature-window.cc.o: csrc/CMakeFiles/csrc.dir/flags.make
csrc/CMakeFiles/csrc.dir/feature-window.cc.o: /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/feature-window.cc
csrc/CMakeFiles/csrc.dir/feature-window.cc.o: csrc/CMakeFiles/csrc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object csrc/CMakeFiles/csrc.dir/feature-window.cc.o"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT csrc/CMakeFiles/csrc.dir/feature-window.cc.o -MF CMakeFiles/csrc.dir/feature-window.cc.o.d -o CMakeFiles/csrc.dir/feature-window.cc.o -c /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/feature-window.cc

csrc/CMakeFiles/csrc.dir/feature-window.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csrc.dir/feature-window.cc.i"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/feature-window.cc > CMakeFiles/csrc.dir/feature-window.cc.i

csrc/CMakeFiles/csrc.dir/feature-window.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csrc.dir/feature-window.cc.s"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/feature-window.cc -o CMakeFiles/csrc.dir/feature-window.cc.s

csrc/CMakeFiles/csrc.dir/fftsg.c.o: csrc/CMakeFiles/csrc.dir/flags.make
csrc/CMakeFiles/csrc.dir/fftsg.c.o: /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/fftsg.c
csrc/CMakeFiles/csrc.dir/fftsg.c.o: csrc/CMakeFiles/csrc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object csrc/CMakeFiles/csrc.dir/fftsg.c.o"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT csrc/CMakeFiles/csrc.dir/fftsg.c.o -MF CMakeFiles/csrc.dir/fftsg.c.o.d -o CMakeFiles/csrc.dir/fftsg.c.o -c /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/fftsg.c

csrc/CMakeFiles/csrc.dir/fftsg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/csrc.dir/fftsg.c.i"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/fftsg.c > CMakeFiles/csrc.dir/fftsg.c.i

csrc/CMakeFiles/csrc.dir/fftsg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/csrc.dir/fftsg.c.s"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/fftsg.c -o CMakeFiles/csrc.dir/fftsg.c.s

csrc/CMakeFiles/csrc.dir/mel-computations.cc.o: csrc/CMakeFiles/csrc.dir/flags.make
csrc/CMakeFiles/csrc.dir/mel-computations.cc.o: /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/mel-computations.cc
csrc/CMakeFiles/csrc.dir/mel-computations.cc.o: csrc/CMakeFiles/csrc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object csrc/CMakeFiles/csrc.dir/mel-computations.cc.o"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT csrc/CMakeFiles/csrc.dir/mel-computations.cc.o -MF CMakeFiles/csrc.dir/mel-computations.cc.o.d -o CMakeFiles/csrc.dir/mel-computations.cc.o -c /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/mel-computations.cc

csrc/CMakeFiles/csrc.dir/mel-computations.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csrc.dir/mel-computations.cc.i"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/mel-computations.cc > CMakeFiles/csrc.dir/mel-computations.cc.i

csrc/CMakeFiles/csrc.dir/mel-computations.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csrc.dir/mel-computations.cc.s"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/mel-computations.cc -o CMakeFiles/csrc.dir/mel-computations.cc.s

csrc/CMakeFiles/csrc.dir/online-feature.cc.o: csrc/CMakeFiles/csrc.dir/flags.make
csrc/CMakeFiles/csrc.dir/online-feature.cc.o: /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/online-feature.cc
csrc/CMakeFiles/csrc.dir/online-feature.cc.o: csrc/CMakeFiles/csrc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object csrc/CMakeFiles/csrc.dir/online-feature.cc.o"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT csrc/CMakeFiles/csrc.dir/online-feature.cc.o -MF CMakeFiles/csrc.dir/online-feature.cc.o.d -o CMakeFiles/csrc.dir/online-feature.cc.o -c /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/online-feature.cc

csrc/CMakeFiles/csrc.dir/online-feature.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csrc.dir/online-feature.cc.i"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/online-feature.cc > CMakeFiles/csrc.dir/online-feature.cc.i

csrc/CMakeFiles/csrc.dir/online-feature.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csrc.dir/online-feature.cc.s"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/online-feature.cc -o CMakeFiles/csrc.dir/online-feature.cc.s

csrc/CMakeFiles/csrc.dir/rfft.cc.o: csrc/CMakeFiles/csrc.dir/flags.make
csrc/CMakeFiles/csrc.dir/rfft.cc.o: /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/rfft.cc
csrc/CMakeFiles/csrc.dir/rfft.cc.o: csrc/CMakeFiles/csrc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object csrc/CMakeFiles/csrc.dir/rfft.cc.o"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT csrc/CMakeFiles/csrc.dir/rfft.cc.o -MF CMakeFiles/csrc.dir/rfft.cc.o.d -o CMakeFiles/csrc.dir/rfft.cc.o -c /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/rfft.cc

csrc/CMakeFiles/csrc.dir/rfft.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csrc.dir/rfft.cc.i"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/rfft.cc > CMakeFiles/csrc.dir/rfft.cc.i

csrc/CMakeFiles/csrc.dir/rfft.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csrc.dir/rfft.cc.s"
	cd /root/FunASR/runtime/websocket/build/csrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc/rfft.cc -o CMakeFiles/csrc.dir/rfft.cc.s

# Object files for target csrc
csrc_OBJECTS = \
"CMakeFiles/csrc.dir/feature-fbank.cc.o" \
"CMakeFiles/csrc.dir/feature-functions.cc.o" \
"CMakeFiles/csrc.dir/feature-window.cc.o" \
"CMakeFiles/csrc.dir/fftsg.c.o" \
"CMakeFiles/csrc.dir/mel-computations.cc.o" \
"CMakeFiles/csrc.dir/online-feature.cc.o" \
"CMakeFiles/csrc.dir/rfft.cc.o"

# External object files for target csrc
csrc_EXTERNAL_OBJECTS =

csrc/libcsrc.a: csrc/CMakeFiles/csrc.dir/feature-fbank.cc.o
csrc/libcsrc.a: csrc/CMakeFiles/csrc.dir/feature-functions.cc.o
csrc/libcsrc.a: csrc/CMakeFiles/csrc.dir/feature-window.cc.o
csrc/libcsrc.a: csrc/CMakeFiles/csrc.dir/fftsg.c.o
csrc/libcsrc.a: csrc/CMakeFiles/csrc.dir/mel-computations.cc.o
csrc/libcsrc.a: csrc/CMakeFiles/csrc.dir/online-feature.cc.o
csrc/libcsrc.a: csrc/CMakeFiles/csrc.dir/rfft.cc.o
csrc/libcsrc.a: csrc/CMakeFiles/csrc.dir/build.make
csrc/libcsrc.a: csrc/CMakeFiles/csrc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/FunASR/runtime/websocket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library libcsrc.a"
	cd /root/FunASR/runtime/websocket/build/csrc && $(CMAKE_COMMAND) -P CMakeFiles/csrc.dir/cmake_clean_target.cmake
	cd /root/FunASR/runtime/websocket/build/csrc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/csrc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
csrc/CMakeFiles/csrc.dir/build: csrc/libcsrc.a
.PHONY : csrc/CMakeFiles/csrc.dir/build

csrc/CMakeFiles/csrc.dir/clean:
	cd /root/FunASR/runtime/websocket/build/csrc && $(CMAKE_COMMAND) -P CMakeFiles/csrc.dir/cmake_clean.cmake
.PHONY : csrc/CMakeFiles/csrc.dir/clean

csrc/CMakeFiles/csrc.dir/depend:
	cd /root/FunASR/runtime/websocket/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/FunASR/runtime/websocket /root/FunASR/runtime/onnxruntime/third_party/kaldi-native-fbank/kaldi-native-fbank/csrc /root/FunASR/runtime/websocket/build /root/FunASR/runtime/websocket/build/csrc /root/FunASR/runtime/websocket/build/csrc/CMakeFiles/csrc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : csrc/CMakeFiles/csrc.dir/depend

