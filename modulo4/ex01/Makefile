program: main.o asm.o
	gcc -g main.o asm.o -o program

main.o: main.c asm.h
	gcc -g -c main.c -o main.o

asm.o: asm.s asm.h
	gcc -g -c asm.s -o asm.o

clean:
	rm -rf *.o program

run:
	./program
