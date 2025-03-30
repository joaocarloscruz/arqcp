#include <stdio.h>
#include "asm.h"

int main(){
	int array[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
	
	int r = vec_diff(array, 10);

	printf("   %d elements are unique\n", r);

	printf("[");
	for(int i = 0; i < 10; i++){
		printf("%d  ,", array[i]);
	}
	printf("]\n");

	int value = 2;
	int result = exists(array, 10, 2);
	

	printf(" The value %d has %d duplicates:\n",value, result);
	return 0;
}
