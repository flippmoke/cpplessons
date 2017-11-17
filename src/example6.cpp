#include <example6_library1.hpp>
#include <example6_library2.hpp>

#include <iostream>
#include <cassert>

void run_library1() {
    example::play();
}

void run_library2() {
    example::beep a { "weeeeee" };
    a.play();
    a.trumpet();
}

int main() {
    run_library1();
    run_library2();
    return 0;
}
