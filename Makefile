.PHONY: all clean strip
all: shell
CC=gcc -std=c99
DEBUG=-g3 -O

shell: shell.o
	$(CC) $(DEBUG) shell.c -o shell

shell.o: shell.c
	$(CC) $(DEBUG) -c shell.c

clean:
	-rm *.o

strip:
	strip -s shell
