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
CMAKE_SOURCE_DIR = /home/dmesg/projects/image_process

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dmesg/projects/image_process

# Include any dependencies generated for this target.
include CMakeFiles/your_program_video.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/your_program_video.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/your_program_video.dir/flags.make

CMakeFiles/your_program_video.dir/videoprocess.cpp.o: CMakeFiles/your_program_video.dir/flags.make
CMakeFiles/your_program_video.dir/videoprocess.cpp.o: videoprocess.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dmesg/projects/image_process/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/your_program_video.dir/videoprocess.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/your_program_video.dir/videoprocess.cpp.o -c /home/dmesg/projects/image_process/videoprocess.cpp

CMakeFiles/your_program_video.dir/videoprocess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/your_program_video.dir/videoprocess.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dmesg/projects/image_process/videoprocess.cpp > CMakeFiles/your_program_video.dir/videoprocess.cpp.i

CMakeFiles/your_program_video.dir/videoprocess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/your_program_video.dir/videoprocess.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dmesg/projects/image_process/videoprocess.cpp -o CMakeFiles/your_program_video.dir/videoprocess.cpp.s

CMakeFiles/your_program_video.dir/videoprocess.cpp.o.requires:

.PHONY : CMakeFiles/your_program_video.dir/videoprocess.cpp.o.requires

CMakeFiles/your_program_video.dir/videoprocess.cpp.o.provides: CMakeFiles/your_program_video.dir/videoprocess.cpp.o.requires
	$(MAKE) -f CMakeFiles/your_program_video.dir/build.make CMakeFiles/your_program_video.dir/videoprocess.cpp.o.provides.build
.PHONY : CMakeFiles/your_program_video.dir/videoprocess.cpp.o.provides

CMakeFiles/your_program_video.dir/videoprocess.cpp.o.provides.build: CMakeFiles/your_program_video.dir/videoprocess.cpp.o


# Object files for target your_program_video
your_program_video_OBJECTS = \
"CMakeFiles/your_program_video.dir/videoprocess.cpp.o"

# External object files for target your_program_video
your_program_video_EXTERNAL_OBJECTS =

your_program_video: CMakeFiles/your_program_video.dir/videoprocess.cpp.o
your_program_video: CMakeFiles/your_program_video.dir/build.make
your_program_video: /usr/local/lib/libopencv_gapi.so.4.7.0
your_program_video: /usr/local/lib/libopencv_highgui.so.4.7.0
your_program_video: /usr/local/lib/libopencv_ml.so.4.7.0
your_program_video: /usr/local/lib/libopencv_objdetect.so.4.7.0
your_program_video: /usr/local/lib/libopencv_photo.so.4.7.0
your_program_video: /usr/local/lib/libopencv_stitching.so.4.7.0
your_program_video: /usr/local/lib/libopencv_video.so.4.7.0
your_program_video: /usr/local/lib/libopencv_videoio.so.4.7.0
your_program_video: /usr/local/lib/libopencv_imgcodecs.so.4.7.0
your_program_video: /usr/local/lib/libopencv_dnn.so.4.7.0
your_program_video: /usr/local/lib/libopencv_calib3d.so.4.7.0
your_program_video: /usr/local/lib/libopencv_features2d.so.4.7.0
your_program_video: /usr/local/lib/libopencv_flann.so.4.7.0
your_program_video: /usr/local/lib/libopencv_imgproc.so.4.7.0
your_program_video: /usr/local/lib/libopencv_core.so.4.7.0
your_program_video: CMakeFiles/your_program_video.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dmesg/projects/image_process/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable your_program_video"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/your_program_video.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/your_program_video.dir/build: your_program_video

.PHONY : CMakeFiles/your_program_video.dir/build

CMakeFiles/your_program_video.dir/requires: CMakeFiles/your_program_video.dir/videoprocess.cpp.o.requires

.PHONY : CMakeFiles/your_program_video.dir/requires

CMakeFiles/your_program_video.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/your_program_video.dir/cmake_clean.cmake
.PHONY : CMakeFiles/your_program_video.dir/clean

CMakeFiles/your_program_video.dir/depend:
	cd /home/dmesg/projects/image_process && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dmesg/projects/image_process /home/dmesg/projects/image_process /home/dmesg/projects/image_process /home/dmesg/projects/image_process /home/dmesg/projects/image_process/CMakeFiles/your_program_video.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/your_program_video.dir/depend

