# allows CMake to pull from other CMake files
include(FetchContent)
#sets env variable
set(PICO_SDK_PATH $ENV{PICO_SDK_PATH} CACHE PATH "Path to the Raspberry Pi Pico SDK")
#tthrows error if not set
if (NOT PICO_SDK_PATH)
message(FATAL_ERROR "PICO_SDK_PATH not set.")
endif()
#allows for the calling pf pico_sdk_init()
include(${PICO_SDK_PATH}/external/pico_sdk_import.cmake)
