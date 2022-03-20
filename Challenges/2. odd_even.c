#include <stdio.h>

int main()
{
	
	int number = 0;
	printf("Please input a value: "); scanf("%i", &number);
	
	printf("In this case, number is %s \n", (number % 2 == 0) ?  "even" : "odd");

	return(0);
}

