#include <stdio.h>


int sum_integer_bytes(unsigned int *p) {
    int result = 0;

    for (int i = 0; i < sizeof(unsigned int); i++) {  
	result += (*p >> (i * 8)) & 0xFF;
    }}
    return result;
}
