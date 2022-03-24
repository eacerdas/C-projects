#include<stdio.h>

void change(int *var1, int *var2);

int main () {
	
	int a = 1;
	int b = 2; 
	
	printf("The values are a= %d , b: %d \n", a, b);
	change(&a,&b);
	printf("The values are a= %d , b: %d \n", a, b);
	
	
}

void change(int *var1, int *var2){
	int temp; 
	
	temp = *var1;
	*var1 = *var2; 
	*var2 = temp; 
}