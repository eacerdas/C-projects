#include <stdio.h>
#include <time.h>
#include <math.h>
#include <stdlib.h>

void sort(int *num1, int *num2){
	int temp = *num1;
	*num1 = *num2;
	*num2 = temp;
}

void bubbleSort(int a[], int len) //bubble sort algorithm
{
    for (int i = 0; i < len; i++){
        for (int j = i+1; j < len; j++){
            if (a[j] < a[i]){  
	            sort(&a[i], &a[j]);
          	}
		}
  	}
} 

void print_array(int a[], int len){ //prints an integer array
    for (int i=0; i<len; i++){
        printf("%d ", a[i]);
    }
    printf("\n");
}

int main()
{	
	srand((unsigned int)time(0)); //seed
	int size = 15; //size of the array
    int array[size];// array that is gonna be sorted
    
    for (int i = 0; i < size; i++){ //filling the array with 0-100 values
    	array[i] = rand()%101;
	}

    printf("Unsorted array: "); print_array(array, size);
	bubbleSort(array, size);
	printf("Sorted array: "); print_array(array, size);
}