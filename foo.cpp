#include "foo.hpp"

bar::bar() { x = 42; }

foo::foo(bar _b) : b(_b) {}

foo make_foo() { return foo(bar()); }

