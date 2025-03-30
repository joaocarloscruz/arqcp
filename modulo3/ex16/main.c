#include <stdio.h>
#include "asm.h"

int main() {
    char array1[] = {'A', 'B', 'C', 'D', 'E'};
    char array2[] = {'1', '2', '3', '4', '5'};

    int num = 5;

    printf("Before swap:\n");
    printf("Array 1: ");
    for (int i = 0; i < num; i++) {
        printf("%c ", array1[i]);
    }
    printf("\n");

    printf("Array 2: ");
    for (int i = 0; i < num; i++) {
        printf("%c ", array2[i]);
    }
    printf("\n");

    swap(array1, array2, num);

    printf("\nAfter swap:\n");
    printf("Array 1: ");
    for (int i = 0; i < num; i++) {
        printf("%c ", array1[i]);
    }
    printf("\n");

    printf("Array 2: ");
    for (int i = 0; i < num; i++) {
        printf("%c ", array2[i]);
    }
    printf("\n");

    return 0;
}
