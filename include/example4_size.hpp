#include <iostream>

namespace example {
    inline void print_size(std::string str) {
        std::clog << str.size() << std::endl;
    }
}
