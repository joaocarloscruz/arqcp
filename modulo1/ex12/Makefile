prog: main.o arraysort.o
	gcc main.o arraysort.o -o prog
	
main.o: main.c
	gcc -Wall -Wextra -fanalyzer -c main.c -o main.o

arraysort.o: arraysort.c arraysort.h
	gcc -Wall -Wextra -fanalyzer -c arraysort.c -o arraysort.o

clean:
	rm -rf *.o 
