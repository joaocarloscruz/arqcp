#include <stdio.h>
#include "asm.h"

int n;
extern int result;

int main(){
	printf("Enter a value of n:\n");
	scanf("%d", &n);	
	sigma();
	printf("The result is %d:\n", result);
	return 0;
}
