#include <stdio.h>

void array_sort(int *vec,int n){
	int max = *vec;
	

	for(int i = 0; i < n - 1 ; i++){
		for(int j = 0; j < n - 1; j++){
			if( *(vec + j) > *(vec + j + 1)){
				int tmp = *(vec + j);
				*(vec + j) = *(vec + j + 1);
				*(vec + j + 1) = tmp;
			}
		}
	}


}
