#include <stdio.h>
#include "asm.h"

short length1 = 10, length2 = 8, height = 3;
int result = 0;

int main(){

	result =  getArea();
	printf("The area of the trapeze is %d", result);
	return 0;
	
}
