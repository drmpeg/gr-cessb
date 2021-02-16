if(NOT PKG_CONFIG_FOUND)
    INCLUDE(FindPkgConfig)
endif()
PKG_CHECK_MODULES(PC_CESSB cessb)

FIND_PATH(
    CESSB_INCLUDE_DIRS
    NAMES cessb/api.h
    HINTS $ENV{CESSB_DIR}/include
        ${PC_CESSB_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    CESSB_LIBRARIES
    NAMES gnuradio-cessb
    HINTS $ENV{CESSB_DIR}/lib
        ${PC_CESSB_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/cessbTarget.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(CESSB DEFAULT_MSG CESSB_LIBRARIES CESSB_INCLUDE_DIRS)
MARK_AS_ADVANCED(CESSB_LIBRARIES CESSB_INCLUDE_DIRS)
