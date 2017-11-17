#pragma once

#include <iostream>

namespace example {
    void print_size(std::string str) {
        std::clog << str.size() << std::endl;
    }
}
