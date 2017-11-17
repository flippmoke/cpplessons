#include <example3_other.hpp>

#include <iostream>
#include <cassert>

void run_say_hello() {
    std::string value = example::say("hello");
    std::clog << value << std::endl;
}

int main() {
    run_say_hello();
    return 0;
}
