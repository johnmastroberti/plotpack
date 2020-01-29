CXX = g++
INCFLAGS = -Iinclude
GTKMM_CXXFLAGS = `pkg-config gtkmm-3.0 --cflags`
CXXFLAGS = -Wall -Wextra -Wpedantic -O3 $(INCFLAGS) $(GTKMM_CXXFLAGS)
LD = g++
LDFLAGS = `pkg-config gtkmm-3.0 --libs`
SRC = helloworld.cpp main.cpp
OBJ = $(SRC:%.cpp=obj/%.o)

default: plotpack

plotpack: $(OBJ)
	$(CXX) -o $@ $(OBJ) $(LDFLAGS)

obj/main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

obj/%.o: src/%.cpp include/%.hpp
	$(CXX) $(CXXFLAGS) -c $< -o $@
