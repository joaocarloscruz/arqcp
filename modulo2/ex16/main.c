#include <stdio.h>
#include "asm.h"

long long num = 30, result = 0;

int main(){
	result = steps();
	printf("The result is %d \n:", result);
	return 0;
}
