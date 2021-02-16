# Copyright 2020 Free Software Foundation, Inc.
#
# This file is part of GNU Radio
#
# SPDX-License-Identifier: GPL-3.0-or-later
#

########################################################################
# Check if there is C++ code at all
########################################################################
if(NOT cessb_sources)
    MESSAGE(STATUS "No C++ sources... skipping python bindings")
    return()
endif(NOT cessb_sources)

########################################################################
# Check for pygccxml
########################################################################
GR_PYTHON_CHECK_MODULE_RAW(
    "pygccxml"
    "import pygccxml"
    PYGCCXML_FOUND
    )

include(GrPybind)

########################################################################
# Python Bindings
########################################################################

list(APPEND cessb_python_files
    clipper_cc_python.cc
    stretcher_cc_python.cc python_bindings.cc)

GR_PYBIND_MAKE_OOT(cessb 
   ../..
   gr::cessb
   "${cessb_python_files}")

install(TARGETS cessb_python DESTINATION ${GR_PYTHON_DIR}/cessb COMPONENT pythonapi)
