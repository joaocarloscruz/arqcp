#include <stdio.h>
#include "asm.h"

unsigned char current = 0, desired = 0;
short result = 0;

int main(){
    printf("Insert current value: ");
    scanf("%hhu", &current);
    printf("Insert desired value: ");
    scanf("%hhu", &desired);
    
    result = needed_time();    
    printf("Current: %hhu, Desired: %hhu\n", current, desired);
    printf("Calculated time: %hu seconds\n", result);
    
    return 0;
}
