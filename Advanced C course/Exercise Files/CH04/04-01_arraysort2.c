#include <stdio.h>

#define SIZE 10

void displayArray(int *a);

int main()
{
	int str[SIZE];
	int outer,inner,temp;

/* Display the unsorted array */
	puts("Unsorted array:");
	displayArray(numbers);

/* Sort the array */
	for(outer=0;outer<SIZE;outer++)
		for(inner=outer+1;inner<SIZE;inner++)
		{
			if( numbers[outer] > numbers[inner])
			{
				temp = numbers[inner];
				numbers[inner] = numbers[outer];
				numbers[outer] = temp;
				displayArray(numbers);
			}
		}

/* Display the sorted array */
	printf("the sorted text is: %s \n", str);

	return(0);
}

/*void displayArray(int *a)
{
	int x;

	for(x=0;x<SIZE;x++)
		printf(" %3d",a[x]);
	putchar('\n');
}*/

