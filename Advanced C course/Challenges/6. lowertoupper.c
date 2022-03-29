#include<stdio.h>
#include<stdlib.h>


char *read_text(char *string,int len);
void lower_to_upper(char *string, int len);

int main () {
	
	int size = 20; //size of the string
	
    //two ways to define the string
    //using a pointer:
    /char *str;
	str = (char *)malloc(sizeof(char)*size);

    //or using an array:
    //char str[size];

	read_text(str,size);
    
	printf("The entered text is: %s \n", str);
	
	lower_to_upper(str,size);
	
}

//functions

char *read_text(char array[],int len){ //asks for text and stores it in var
	
	printf("Enter some text \n");
	fgets(array,len+1,stdin);
	
	return(array);
}

void lower_to_upper(char array[], int len){
	int realLen=0;
	
	while(array[realLen] != '\0'){
		realLen++;
	}

	//printf("The enterded string is %i chars long \n", realLen); -> only for testing 

	for(int i=0;i<realLen-1;i++){
		if(array[i] != 32){
			array[i] = array[i]-32;	//converts any letter to uppercase
		}else{
			array[i] = array[i]+63; //if it is a space, then it converts it to an underscore
		}
	}
	printf("The upper array is: %s", array);
}
