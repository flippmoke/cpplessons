CC := $(CC)
CXX := $(CXX)
CXXFLAGS := $(CXXFLAGS) -Iinclude -std=c++11
RELEASE_FLAGS := -O3 -DNDEBUG
WARNING_FLAGS := -Wall -Wextra -Werror -Wsign-compare -Wfloat-equal -Wfloat-conversion -Wshadow -Wno-unsequenced
DEBUG_FLAGS := -g -O0 -DDEBUG -fno-inline-functions -fno-omit-frame-pointer

example_1:
	$(CXX) src/example1.cpp -o example_1 $(CXXFLAGS)

example_2:
	$(CXX) -c src/example1.cpp $(CXXFLAGS)
	$(CXX) example1.o -o example_2 $(CXXFLAGS)

example_3:
	$(CXX) -c src/example3_main.cpp $(CXXFLAGS)
	$(CXX) -c src/example3_other.cpp $(CXXFLAGS)
	$(CXX) example3_main.o example3_other.o -o example_3 $(CXXFLAGS)

example_4:
	$(CXX) -c src/example4_main.cpp $(CXXFLAGS)
	$(CXX) -c src/example4_other.cpp $(CXXFLAGS)
	$(CXX) example4_main.o example4_other.o -o example_4 $(CXXFLAGS)

example_5:
	$(CXX) -c src/example5_main.cpp $(CXXFLAGS)
	$(CXX) -c src/example5_other.cpp $(CXXFLAGS)
	$(CXX) example5_main.o example5_other.o -o example_5 $(CXXFLAGS)
