#include "foo.hpp"
#include <iostream>

int main(void) {
    std::cout << make_foo().b.x << std::endl;
    return 0;
}
