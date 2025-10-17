#declares the cmake used to create the project. if the cmake version is too old, compilation fails. if it's newer, cmake will act as a previous version.
cmake_minimum_required(VERSION 3.13)

#allows for the usage of .cmake files inside this directory. Usually, cmake files are just scripts to help out with dpendencies, etc. that CMakeLists.txt can include to find things like functions and macros or compiler flags

include(example.cmake)
#declares a project. any children cmakelists that call this project will contribute
project(cmakeEx_proj)

#adds child subdirectory. Cmake will be called on the subdirectory and work its way up to root (here), so this is a dependency of that subdir. nice organizational tool, in this case this will be used for modularity
add_subdirectory(src)




#references a .cmake
hello("hello")

set(var1 42)
set(var2 "hallo2")
print_vars(var1 var2)
