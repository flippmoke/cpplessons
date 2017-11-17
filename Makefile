CC := $(CC)
CXX := $(CXX)
CXXFLAGS := $(CXXFLAGS) -Iinclude -std=c++11

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

example_6:
	$(CXX) -c src/example6_library1.cpp $(CXXFLAGS)
	$(CXX) -c src/example6_library2.cpp $(CXXFLAGS)
	ar rcs libexample6.a example6_library1.o example6_library2.o
	$(CXX) src/example6.cpp -o example_6 $(CXXFLAGS) -lexample6 -L.

example_7:
	$(CXX) -c src/example6_library1.cpp $(CXXFLAGS)
	$(CXX) -c src/example6_library2.cpp $(CXXFLAGS)
	$(CXX) -shared example6_library1.o example6_library2.o -o libexample7.dylib
	$(CXX) src/example6.cpp -o example_7 $(CXXFLAGS) -lexample7 -L.

example_8:
	$(CXX) src/example8.cpp -o example_8 $(CXXFLAGS)
