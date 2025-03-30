#include <stdio.h>
#include "asm.h"

long A = 0, B = 0;
char result = 0;

int main(){
	printf("Enter value of A:\n");
	scanf("%lu", &A);
	printf("Enter value of B:\n");
	scanf("%lu", &B);
	result = isMultiple();
	printf("The result is %lu\n", result);
	return 0;
}
