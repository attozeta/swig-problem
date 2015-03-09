#ifndef FOO_H
#define FOO_H

class foo;

class bar {
    public:
        int x;
        bar();
};

class foo {
    public:
        bar b;
        foo(bar b);
};

foo make_foo();

#endif
