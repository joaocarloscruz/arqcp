#include <stdio.h>
#include "asm.h"

int main(){

	int n = 3;


	long result = sum2_n(n);

	printf("Square of sum of integers from 1 to %d : %lu \n", n, result);

	return 0;

}

