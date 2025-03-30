#include <stdio.h>

union union_u1{
    char vec[32];
    float a;
    int b;
}u;

struct struct_s1 {
    char vec[32];
    float a;
    int b;
}s;

void print_sizes() {
    printf("Size of union union_u1: %zu bytes\n", sizeof(union union_u1)); // size is 32 bytes due to the biggest
																		   // variable being the array of chars.
    printf("Size of struct struct_s1: %zu bytes\n", sizeof(struct struct_s1)); // Size is 40 bytes due to the sum of the
																			   // size of all variables of the structure
																			   // being 40
}

int main() {
    print_sizes();
    return 0;
}
