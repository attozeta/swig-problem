Introduction
------------

This example demonstrates a problem using SWIG to build a Python binding for a
C++ module.

Bug
---

To reproduce the bug do the following:

    make # this builds foo.py
    python -c "import foo; print(foo.make_foo().b.x)"

This should print 42 but actually prints garbage. The reason why we get garbage
is probably(?) related to invalid (Python) wrapper code generation by SWIG.
Remark that the C++ code is perfectly fine and you may run:

    make example && ./example

This prints 42, as expected.

Debug-Info
----------

- Date: 12.03.2015
- SWIG 3.0.5
- Python 2.7.6
- g++ 4.8.2
- Linux 3.13.0-45

