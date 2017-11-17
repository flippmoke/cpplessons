#include <example6_library2.hpp>

#include <iostream>
#include <cassert>

void run_library2() {
    example::beep a { "weeeeee" };
    a.trumpet();
}

int main() {
    run_library2();
    return 0;
}
