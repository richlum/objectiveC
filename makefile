CC=clang
# CFLAGS=-fobjc-arc -framework Foundation
CFLAGS=-fobjc-arc 

SRC=$(wildcard *.m)
TRG=$(patsubst %.m,%,$(SRC))
OBJ=$(patsubst %.m,%.o,$(SRC))


makeshapes: makeshapes.m circle.o shape.o rect.o
	$(CC) $(CFLAGS) $^ -o makeshapes

list:
	echo $(SRC)
	echo $(TRG)


clean:
	rm $(OBJ)

