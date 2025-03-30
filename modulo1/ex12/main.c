#include <stdio.h>
#include "arraysort.h"
int main(){
	int array[] = {4,1,7,12,3};
	int n = 5;
	array_sort(array, n);
	printf("Sorted array: ");
	    for (int i = 0; i < n; i++) {
	            printf("%d ", array[i]);
	                }
	
	return 0;
}
