#include <stdio.h>
#include "asm.h"

int main(){
	char str1 [10] = "Hello, ";

	char str2 [10] = "World!";

	char str3[80];
	str_cat(str1, str2, str3);


	printf("%s\n", str3);

	return 0;
}
