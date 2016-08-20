# - Try to find Irrlicht
# Once done this will define
#
#  IRRLICHT_FOUND - system has Irrlicht
#  IRRLICHT_INCLUDE_DIRS - the Irrlicht include directory
#  IRRLICHT_LIBRARIES - Link these to use Irrlicht
#  IRRLICHT_DEFINITIONS - Compiler switches required for using Irrlicht
#
#  Copyright (c) 2006 Andreas Schneider <mail@cynapses.org>
#  Copyright (c) 2016 Brigham Keys, Esq. <bkeys@gnu.org>
#
#  Redistribution and use is allowed according to the terms of the New
#  GNU GPL v3+
#  For details see the accompanying COPYING-CMAKE-SCRIPTS file.
#


if (IRRLICHT_LIBRARY AND IRRLICHT_INCLUDE_DIRS)
  # in cache already
  set(IRRLICHT_FOUND TRUE)
else (IRRLICHT_LIBRARY AND IRRLICHT_INCLUDE_DIRS)

  find_path(IRRLICHT_INCLUDE_DIR
    NAMES
      irrlicht.h
    PATHS
      /usr/include
      /usr/include/irrlicht
      /usr/local/include
      /usr/local/include/irrlicht
      /opt/local/include
      /sw/include
  )

  find_library(IRRLICHT_LIBRARY
    NAMES
     	Irrlicht
    PATHS
      /usr/lib
      /usr/local/lib
      /opt/local/lib
      /sw/lib
  )

  if (IRRLICHT_LIBRARY)
    set(IRRLICHT_FOUND TRUE)
  endif (IRRLICHT_LIBRARY)

  set(IRRLICHT_INCLUDE_DIRS
    ${IRRLICHT_INCLUDE_DIR}
  )

  if (IRRLICHT_FOUND)
    set(IRRLICHT_LIBRARY
      ${IRRLICHT_LIBRARY}
      ${IRRLICHT_LIBRARY}
    )
  endif (IRRLICHT_FOUND)

  if (IRRLICHT_INCLUDE_DIRS AND IRRLICHT_LIBRARY)
     set(IRRLICHT_FOUND TRUE)
  endif (IRRLICHT_INCLUDE_DIRS AND IRRLICHT_LIBRARY)

  if (IRRLICHT_FOUND)
    if (NOT IRRLICHT_FIND_QUIETLY)
      message(STATUS "Found Irrlicht: ${IRRLICHT_LIBRARY}")
    endif (NOT IRRLICHT_FIND_QUIETLY)
  else (IRRLICHT_FOUND)
    if (IRRLICHT_FIND_REQUIRED)
      message(FATAL_ERROR "Could not find Irrlicht")
    endif (IRRLICHT_FIND_REQUIRED)
  endif (IRRLICHT_FOUND)

  # show the IRRLICHT_INCLUDE_DIRS and IRRLICHT_LIBRARY variables only in the advanced view
  mark_as_advanced(IRRLICHT_INCLUDE_DIRS IRRLICHT_LIBRARY)

endif (IRRLICHT_LIBRARY AND IRRLICHT_INCLUDE_DIRS)
