#include <stdio.h>
#include <string.h>

typedef struct {
	short number;
	int grades[5];
	char age;
	char name[60];
	char address[100];
} Student;

void fill_student(Student* s, char age, short number, char* name, char* address);

int main(){
	Student students[5];

	fill_student(&students[0], 30, 1001, "Tiago Saramago", "St. Maria da Feira");
    fill_student(&students[1], 39, 1002, "Cristiano Ronaldo", "Riyadh");
    fill_student(&students[2], 19, 1003, "João Cruz", "Paredes");
    fill_student(&students[3], 19, 1004, "Luis Barros", "Bitarães");
    fill_student(&students[4], 19, 1005, "Pedro Natário", "Penafiel");

    for (int i = 0; i < 5; i++) {
        printf("Student %d:\n", i + 1);
        printf("  Number: %d\n", students[i].number);
        printf("  Age: %d\n", students[i].age);
        printf("  Name: %s\n", students[i].name);
        printf("  Address: %s\n", students[i].address);
        printf("\n");
    }

	return 0;
}


void fill_student(Student* s, char age, short number, char* name, char* address){
	s->age = age;
	s->number = number;
	strcpy(s->name, name);
	strcpy(s->address, address);
}
