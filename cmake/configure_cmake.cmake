# Configure Library Directories for each Platform
IF (CMAKE_HOST_SYSTEM_NAME STREQUAL "Windows" AND NOT DEFINED CMAKE_SYSTEM_NAME)
    message("-- [INFO] Windows Host Detected")

    if(CMAKE_GENERATOR_PLATFORM MATCHES "^[Ww][Ii][Nn]32$")
        set(WINDOWS_TARGET_ARCH x86)
    elseif(CMAKE_GENERATOR_PLATFORM MATCHES "^[Xx]64$")
        set(WINDOWS_TARGET_ARCH x64)
    endif()

    set(OUTPUT_SUFFIX "windows-${WINDOWS_TARGET_ARCH}")

ELSEIF(CMAKE_HOST_SYSTEM_NAME STREQUAL "Darwin")
    message("-- [INFO] Darwin Host Detected")    
    set(OUTPUT_SUFFIX "darwin")

ELSEIF(CMAKE_HOST_SYSTEM_NAME STREQUAL "Linux")
    # Linux uses system libraries, so no weird stuff has to be done here.
    message("-- [INFO] Linux Host Detected")    
    set(OUTPUT_SUFFIX "linux")

ELSE()
    message("-- UNSUPPORTED SYSTEM: ${CMAKE_HOST_SYSTEM_NAME} ${CMAKE_SYSTEM_NAME}")
ENDIF()