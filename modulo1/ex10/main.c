#include <stdio.h>
#include "whereis.h"  // Include the header file for the where_is function

int main() {
    char str[] = "O pedro é gay";  // Input string
    char *result = where_is(str, 'p');  // Search for the character 'p'

    if (result != NULL) {
        printf("Found character: %c\n", *result);  // Print the found character
        printf("Substring starting from found character: %s\n", result);  // Print the substring
        printf("Character found at position: %ld\n", result - str);  // Print the index of the character
    } else {
        printf("Character not found.\n");  // Handle the case where 'p' is not found
    }

    return 0;  // Return success
}
