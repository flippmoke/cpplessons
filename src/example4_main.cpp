#include <example4_other.hpp>

#include <iostream>
#include <cassert>

void run_say_hello() {
    std::string value = example::say("hello");
    example::print_size(value);
    std::clog << value << std::endl;
}

int main() {
    run_say_hello();
    return 0;
}
