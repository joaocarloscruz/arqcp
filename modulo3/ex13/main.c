#include <stdio.h>
#include "asm.h"

int main(){
	int array[5] = {-21, 51, -52, -123,-34};

	keep_positives(array,5);
	printf("[");
	for(int i = 0; i < 5; i++){
		printf("%d  ,", array[i]);
	}
	printf("]");


	return 0;
}
