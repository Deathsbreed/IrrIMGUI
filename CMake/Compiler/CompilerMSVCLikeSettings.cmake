SET(MSVC_LIKE_COMPILER OFF)

if ("x${CMAKE_CXX_COMPILER_ID}" STREQUAL "xMSVC")
	message(STATUS "Detect MSVC compiler...")
	SET(MSVC_LIKE_COMPILER ON)
elseif ("x${CMAKE_CXX_COMPILER_ID}" STREQUAL "xIntel")
	if(WIN32)
		message(STATUS "Detect Intel compiler and handle it like MSVC...")
		SET(MSVC_LIKE_COMPILER ON)
	endif ()
endif ()

#if (MSVC_LIKE_COMPILER)
#	SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
#endif ()
