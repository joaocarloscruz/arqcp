#include <stdio.h>

int sum_odd(int *p){
	int n = *p;
	int count = 1;
	int sum = 0;
	while(count  < n + 1){
 		if(*(p + count) % 2 != 0){
 			sum += *(p + count);
		} 	
		count++;
	}
	return sum;
}
