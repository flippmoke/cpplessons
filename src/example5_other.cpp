#include <example5_other.hpp>
#include <example5_size.hpp>

#include <string>

namespace example {
    std::string say(std::string input) {
        print_size(input);
        return std::string("I said: ") + input;
    }
}
