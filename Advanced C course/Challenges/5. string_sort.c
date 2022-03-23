#include<stdio.h>

int main () {
	
	char str[10];
	int i, j, k=0;
	char temp;
	
	
	printf("enter some text \n");
	fgets(str,11,stdin);
	printf("the unsorted text is: %s \n", str);

	while (str[k] != 0){
		k++;
	}

	for(int i=0;i<k;i++){
		for(int j=i+1;j<k;j++){
			if(str[i] > str[j]){ 
				temp = str[j];
				str[j] = str[i];
				str[i] = temp;
			}
		}
	}
	printf("the sorted text is: %s \n", str);
}

