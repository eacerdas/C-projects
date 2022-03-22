#include<stdio.h>


int *function(){
	static int p[5]={2,3,5,7,11};
	return (p);
}

int main () {
	
	int x;
	int *array;
	array = function();
	int len = sizeof(array)/sizeof(array[0]);
	for(x=0;x<=sizeof(*array);x++)
		printf("%2d",array[x]);	
}

