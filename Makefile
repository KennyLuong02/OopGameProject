CXX		  := g++
CXX_FLAGS := -Wall -Wextra -std=c++17 -ggdb
#CXX_FLAGS := -std=c++17 -ggdb

BIN		:= bin
SRC		:= src
INCLUDE	:= include
LIB		:= lib

LIBRARIES	:= -lsfml-graphics -lsfml-window -lsfml-system
EXECUTABLE	:= main


#Player.o: Player.cpp
#	g++ Player.cpp -c Player.o

#Container.o: Container.cpp Bowl.cpp Dishwasher.cpp Stove.cpp
#	g++ Container.cpp Bowl.cpp Dishwasher.cpp Stove.cpp -c Container.o

#Resources.o: Resources.cpp
#	g++ Resources.cpp -c Resources.o 

#Order.o: Order.cpp
#	g++ Order.cpp -c Order.o 

#main.o: main.cpp
#	g++ main.cpp -c main.o 



#gameStart: Order.o Player.o Resources.o Container.o 
#	g++ Order.o Player.o Resources.o Container.o main.o -o gameStart



#clean:
#	rm gameStart *.o 



all: $(BIN)/$(EXECUTABLE)

run: clean all
	clear
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cpp
	$(CXX) $(CXX_FLAGS) -I$(INCLUDE) -L$(LIB) $^ -o $@ $(LIBRARIES)

clean:
	-rm $(BIN)/*
