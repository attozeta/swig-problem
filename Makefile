foo.py: foo.i foo.hpp foo.cpp
	swig -python -c++ foo.i
	g++ -Wall -g -c -fPIC foo_wrap.cxx foo.cpp -I/usr/include/python2.7
	g++ -Wall -g -shared foo_wrap.o foo.o -o _foo.so

example: example.cpp foo.cpp
	g++ -Wall -g foo.cpp example.cpp -o example

clean:
	rm -f *.o *.so *.cxx *.py *.pyc example

