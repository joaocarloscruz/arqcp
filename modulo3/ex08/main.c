#include <stdio.h>
#include "asm.h"

int main(){
	int x = 4;

	int result = test_even(x);

	printf("%d\n", result);

	return 0;
}
