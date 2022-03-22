#include<stdio.h>

//function that adds all the numbers in an array

int add(int *b, int len){
	int *a = b;
	
	static int total = 0;
	
	for(int i=0;i<len;i++)
		total = total + a[i];
	
	return total;
}

int main () {
	
	int size;
	int tot = 0;
	printf("Enter the quantity of numbers: \n");
	scanf("%d", &size);
	int array[size];
	
	printf("Enter the %d numbers: \n", size);
	
	for(int i=0;i<size;i++)
		scanf("%d", &array[i]);
		
	printf("The array introduced was: [");
	for(int i=0;i<size;i++)
		if (i==(size-1)){
			printf("%d] \n", array[i]);
		}
		else{
			printf("%d, ", array[i]);		
		}
		
	printf("The result is: %i \n", add(array, size));
	
	
	return(0);
}