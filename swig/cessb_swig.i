/* -*- c++ -*- */

#define CESSB_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "cessb_swig_doc.i"

%{
#include "cessb/clipper_cc.h"
#include "cessb/stretcher_cc.h"
%}


%include "cessb/clipper_cc.h"
GR_SWIG_BLOCK_MAGIC2(cessb, clipper_cc);
%include "cessb/stretcher_cc.h"
GR_SWIG_BLOCK_MAGIC2(cessb, stretcher_cc);
