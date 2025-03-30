prog: main.o sumintegerbytes.o
	gcc main.o sumintegerbytes.o -o prog

main.o: main.c sumintegerbytes.h
	gcc -Wall -Wextra -fanalyzer -c main.c -o main.o

sumintegerbytes.o: sumintegerbytes.c sumintegerbytes.h
	gcc -Wall -Wextra -fanalyzer -c sumintegerbytes.c -o sumintegerbytes.o

clean:
	rm -rf *.o

run: prog
	./prog
