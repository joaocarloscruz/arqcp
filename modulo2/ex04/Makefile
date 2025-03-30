program: main.o asm.o
	gcc main.o asm.o -z noexecstack -o program

main.o: main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

asm.o: asm.s
	gcc -c -g -Wall -Wextra -c asm.s -o asm.o

clean:
	rm -f *.o program
