#include <stdio.h>
#include "asm.h"

int main(){
	char a = '0';
	char b = 'b';

	int result = test_different(&a, &b);

	if(result == 1){
		printf("The chars are different");
	}else{
		printf("The chars are equal");
	}


	return 0;

}

