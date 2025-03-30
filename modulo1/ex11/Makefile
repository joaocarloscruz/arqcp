prog: main.o sumodd.o
	gcc main.o sumodd.o -o prog

main.o: main.c 
	gcc -Wall -Wextra -fanalyzer -c main.c -o main.o
	
sumodd.o: sumodd.c sumodd.h
	gcc -Wall -Wextra -fanalyzer -c sumodd.c -o sumodd.o

clean:
	rm -rf *.o 
