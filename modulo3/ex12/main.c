#include <stdio.h>
#include "asm.h"

int main(){
	int array[5] = {1, 51, 52, 3, 4};

	unsigned char result = vec_zero(array,5);
	printf("[");
	for(int i = 0; i < 5; i++){
		printf("%d  ,", array[i]);
	}
	printf("]");

	printf("%hhu", result);

	return 0;
}
