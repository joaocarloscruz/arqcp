#include <stdio.h>
#include "asm.h"


int num1= 0, num2 = 0;
extern int result;


int main() {
    int operation;

    printf("Operations:\n");
    printf(" 1 : Sum\n");
    printf(" 2 : Subtraction\n");
    printf(" 3 : Multiplication\n");
    printf(" 4 : Division\n");
    printf(" 5 : Modulus\n");
    printf(" 6 : Power of 2\n");
    printf(" 7 : Power of 3\n");
    printf("Enter operation (1-7): ");
    scanf("%d", &operation);

    if (operation == 6 || operation == 7) {
        printf("Enter the number: ");
        scanf("%d", &num1);
    } else {
        printf("Enter first number: ");
        scanf("%d", &num1);
        printf("Enter second number: ");
        scanf("%d", &num2);
    }

    switch (operation) {
        case 1:
            sum();
            break;
        case 2:
            subtraction();
            break;
        case 3:
            multiplication();
            break;
        case 4:
            division();
            break;
        case 5:
            modulus();
            break;
        case 6:
            powerTwo();
            break;
        case 7:
            powerThree();
            break;
        default:
            return 1;
    }

    printf("The result is: %d\n", result);
    return 0;
}
