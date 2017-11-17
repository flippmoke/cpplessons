#pragma once

#include <string>
#include <iostream>

namespace example {

    struct beep {
    
        std::string a;

        void trumpet() {
            std::clog << "The trumpet says ";
            std::clog << a << std::endl;
        }

        void play();

    };
}
