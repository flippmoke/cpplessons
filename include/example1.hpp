#pragma once

#include <string>

namespace example {

    inline std::string say(std::string input) {
        return std::string("I said: ") + input;
    }
}
