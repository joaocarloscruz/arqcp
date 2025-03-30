#include <stdio.h>
#include "asm.h"

extern int length1, length2, height;
extern int result;

int main(){

	result =  getArea();
	printf("The area of the trapeze is %d", result);
	return 0;
	
}
