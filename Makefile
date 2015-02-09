YACC = bison -y -d 
LEX = flex
TARGET = bin/latino
CFLAGS = -g -Wall
LIBS =
CC = gcc

ifeq (Windows_NT,$(OS))
TARGET:=$(TARGET).exe
endif

TESTS=$(wildcard ejemplos/*.lat)

all : $(TARGET)

.PHONY : all

test : all
	$(TARGET) $(TESTS)

.PHONY : test

src/y.tab.c : src/parse.y
	$(YACC) -o src/y.tab.c src/parse.y

src/lex.yy.c : src/lex.l
	$(LEX) -osrc/lex.yy.c src/lex.l

src/parse.o : src/y.tab.c src/lex.yy.c
	$(CC) -g -c src/y.tab.c -o src/parse.o

src/main.o : src/main.c
	$(CC) -g -c src/main.c -o src/main.o

$(TARGET) : src/parse.o src/main.o
	mkdir -p "$$(dirname $(TARGET))"
	$(CC) $(CFLAGS) src/parse.o src/main.o -o $(TARGET) $(LIBS)

clean :
	rm -f src/y.output src/y.tab.c
	rm -f src/lex.yy.c
	rm -f src/*.o $(TARGET)
.PHONY : clean
