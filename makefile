OBJS = Data.o AVLTree.o
CC = g++-4.9
DEBUG = -g
C11 = -std=c++11 
LFLAGS = -Wall $(DEBUG) $(C11) 
CFLAGS = $(LFLAGS) -c 
EXE = Lab3
SYS_RUNCMD = ./

all: $(OBJS) main.cpp 
	$(CC) $(LFLAGS) main.cpp $(OBJS) -o $(EXE) 

run: all 
	$(SYS_RUNCMD)$(EXE) 

Data.o: Data.h
	$(CC) $(CFLAGS) Data.cpp

AVLTree.o: Data.h AVLTree.h 
	$(CC) $(CFLAGS) AVLTree.cpp 

clean: 
	rm -r *.o Lab3 *.dSYM
