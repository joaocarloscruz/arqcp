#include <stdio.h>
#include "asm.h"

int main(){
	char str[] = "A vida voa";
	
	int result = encrypt(str);

	printf("%s\n", str);
	printf("%d characters were changed\n", result);

	return 0;
}
