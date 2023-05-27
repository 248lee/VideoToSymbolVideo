cmake_minimum_required(VERSION 3.0)
project(YourProjectName)

find_package(OpenCV REQUIRED)

add_executable(your_program_video videoprocess.cpp)
target_link_libraries(your_program_video ${OpenCV_LIBS})
