#okay. I hope I understand this correctly, if not, this will be edited later with new knowledge.

#this declares what CMake version that this project needsi

cmake_minimum_required(VERSION 3.13)

# Importing the SDK using the cmake file we made earlier
include(pico_sdk_import.cmake)

project(my_project)

#sdk init (impossible without the .cmake file
pico_sdk_init()

#adds source files in a subdirectory
add_subdirectory(src)


