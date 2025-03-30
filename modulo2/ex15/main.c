#include <stdio.h>
#include "asm.h"

int A = 5, B = 10, C = 3, D = 7, result = 0;

int main(){
	result = compute();
	printf("The result is: %d", result);	

	return 0;
}
