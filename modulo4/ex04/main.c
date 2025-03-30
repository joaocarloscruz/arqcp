#include <stdio.h>
#include "asm.h"

int main(){
	int num1 = 3;
	int num2 = 13;
	int sub;

	int sum =sum_sub(num1,num2, &sub);

	printf("The sum is: %d\n", sum);
	printf("The subtraction is: %d\n", sub);

	return 0;

}

