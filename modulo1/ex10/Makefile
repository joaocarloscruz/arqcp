prog: main.o whereis.o
	gcc main.o whereis.o -o prog

main.o: main.c
	gcc -Wall -Wextra -fanalyzer -c main.c -o main.o

whereis.o: whereis.c whereis.h
	gcc -Wall -Wextra -fanalyzer -c whereis.c -o whereis.o

clean:
	rm -rf *.o
