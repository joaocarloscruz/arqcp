#include <stdio.h>
#include "asm.h"

void print_array(int* ptr, int num) {
    for (int i = 0; i < num; i++) {
        printf("%d ", ptr[i]);
    }
    printf("\n");
}

int main() {
    // Define an array of integers
    int array[] = {8, 1, 4, 7, 3, 2, 5, 6};
    int num = 8;  // Number of elements in the array

    // Print the array before sorting
    printf("Before sorting: ");
    print_array(array, num);

    // Call the array_sort function to sort the array in descending order
    array_sort(array, num);

    // Print the array after sorting
    printf("After sorting: ");
    print_array(array, num);

    return 0;
}
