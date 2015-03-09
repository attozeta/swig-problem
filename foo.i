%module foo

%{
#define SWIG_FILE_WITH_INIT
#include "foo.hpp"
%}

%include "foo.hpp"

