#include <stdio.h>
#include "asm.h"

int main(){
	int x = 10;


	long result = d_square(x);

	printf("The double of the square of value %d is: %lu \n",x, result);



	return 0;
}
