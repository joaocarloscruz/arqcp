#include <stdio.h>
#include "asm.h"

int main(){
	int v2 = 10;
	short v1 = 6;

	long cube = inc_and_cube(&v1,v2);

	printf("The cube is %ld\n", cube);
	printf("The value of v1 is: %d\n", v1);

	return 0;

}

