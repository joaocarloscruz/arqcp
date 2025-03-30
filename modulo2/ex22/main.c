#include <stdio.h>
#include "asm.h"

int j, i;

int main() {
    int option, result;

    printf("Select function:\n");
    printf("1. f\n");
    printf("2. f2\n");
    printf("3. f3\n");
    printf("4. f4\n");
    printf("Enter your choice: ");
    scanf("%d", &option);

    printf("Enter the value for i: ");
    scanf("%d", &i);
    printf("Enter the value for j: ");
    scanf("%d", &j);

    switch (option) {
        case 1:
            result = f();
            printf("Result of f(): %d\n", result);
            break;
        case 2:
           // result = f2();
            printf("Result of f2(): %d\n", result);
            break;
        case 3:
            result = f3();
            printf("Result of f3(): %d\n", result);
            break;
        case 4:
           // result = f4();
            printf("Result of f4(): %d\n", result);
            break;
        default:
            printf("Invalid choice\n");
    }

    return 0;
}
