#include <stdio.h>
#include "asm.h"

int main(){
	int vec[5] = {1,2,3,4,5};

	int x = 4;


	int* result = vec_search(vec, 5, x);

	printf("%p\n", result);

	result = vec_search (vec, 5, 3);
	printf("%p\n", result);
	return 0;
}
