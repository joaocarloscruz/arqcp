#include <stdio.h>
#include "asm.h"

short num = 0;

int main(){
	char result;
	printf("Insert value of the number:");
	scanf("%hd", &num);

	
	
	result = check_num();
	printf("The result is: %d:\n", result);
	return 0;
}
