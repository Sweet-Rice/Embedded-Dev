#cmake files can do a number of different things, I think they're mostly housekeeping and convenience sake things though. Macros and global functions and such for CMakeLists.

#defines a function named hello with parameter text. I believe text to behave similar to a string
function(hello text)
	message(" === hello! your .cmake text is ${text} ===")
endfunction()

#defines a macro named print_vars which treats VARS as a list of VAR
macro (print_vars VARS)
	foreach(VAR ${VARS})
		message("${VAR} = ${${VAR}}")
	endforeach()
endmacro()
#NOTE: treat $ similar to & for dereferencing C pointers

#cmake can also set things for compilation. not completely necessary for native system compilation, but cmake was built with cross compilation in mind. therefore it helps out with things like pico dev

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_C_COMPILER gcc)

#cmake can also set up sdks. for example:
#set(SDK_PATH $ENV{MY_SDK_PATH} CACHE PATH "Path to SDK")

