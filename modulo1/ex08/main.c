#include <stdio.h>
#include "sumintegerbytes.h"

int main(){
	unsigned int d = 0xAABBCCDD;

	int r = sum_integer_bytes(&d); // r = 0xDD+0xCC+0xBB+0xAA = 782
	printf("%d\n", r);
	return 0;
}
