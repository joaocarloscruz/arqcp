#include <stdio.h>
#include "asm.h"

short op1 = 0, op2 = 0;
char result = 0;

int main(){
	printf("Enter a value for op1:");
	scanf("%d", &op1);
	printf("Enter a value for op2:");
	scanf("%d", &op2);
	result = verify_flags();
	printf("%d", result);
	if( result == 1){
		printf("One or more flags has been activated");
		
	}else{
		printf("No flag has been activated");
	}
	return 0;
}
