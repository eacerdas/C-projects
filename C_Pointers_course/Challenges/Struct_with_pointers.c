#include <stdio.h>
#include <stdlib.h>

int main(){

    struct person {
        int *age;
        char *name;
    } 
	*tony, 
	*santi;


    tony = (struct person*)malloc(sizeof(struct person)*1);
    if(tony == NULL){
        fprintf(stderr,"Allocation Error");
        exit(1);
    }
    santi = (struct person*)malloc(sizeof(struct person)*1);
    if(santi == NULL){
        fprintf(stderr,"Allocation Error");
        exit(1);
    }

	tony->name = "Edward";
    santi->name = "Santiago";

	tony->age = (int*)malloc(sizeof(int)*1); //function malloc(size)
    if(tony->age == NULL){
        fprintf(stderr,"Allocation Error");
        exit(1);
    }

    santi->age = (int*)malloc(sizeof(int)*1); //function malloc(size)
    if(santi->age == NULL){
        fprintf(stderr,"Allocation Error");
        exit(1);
    }

    *tony->age = 25;
    *santi->age = 24;

    printf("My age: %i \n", tony->age);
    printf("My name: %s \n", tony->name);
    printf("His age: %i \n", santi->age);
    printf("His name: %s \n", santi->name);

    return (0);
}