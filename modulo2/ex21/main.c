#include <stdio.h>
#include "asm.h"

short code = 0, currentSalary = 0;

short newSalary;
int main(){
	printf("Insert your code:\n " );
	scanf("%hd", &code);
	printf("Insert your current salary:\n");
	scanf("%hd", &currentSalary);

	newSalary = new_salary();
	printf("Your new salary will be %hd: \n", newSalary);
}
