/*
 * Copyright 2021 Free Software Foundation, Inc.
 *
 * This file is part of GNU Radio
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 *
 */

/***********************************************************************************/
/* This file is automatically generated using bindtool and can be manually edited  */
/* The following lines can be configured to regenerate this file during cmake      */
/* If manual edits are made, the following tags should be modified accordingly.    */
/* BINDTOOL_GEN_AUTOMATIC(0)                                                       */
/* BINDTOOL_USE_PYGCCXML(0)                                                        */
/* BINDTOOL_HEADER_FILE(stretcher_cc.h)                                        */
/* BINDTOOL_HEADER_FILE_HASH(42d0813fd4012817beb0a50ce4abcd97)                     */
/***********************************************************************************/

#include <pybind11/complex.h>
#include <pybind11/pybind11.h>
#include <pybind11/stl.h>

namespace py = pybind11;

#include <cessb/stretcher_cc.h>
// pydoc.h is automatically generated in the build directory
#include <stretcher_cc_pydoc.h>

void bind_stretcher_cc(py::module& m)
{

    using stretcher_cc    = ::gr::cessb::stretcher_cc;


    py::class_<stretcher_cc, gr::block, gr::basic_block,
        std::shared_ptr<stretcher_cc>>(m, "stretcher_cc", D(stretcher_cc))

        .def(py::init(&stretcher_cc::make),
           D(stretcher_cc,make)
        )
        



        ;




}








