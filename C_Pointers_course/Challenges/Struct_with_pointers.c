#include <stdio.h>
#include <stdlib.h>

int main(){

    struct persona { //struct with pointers as variables
       char *nombre;
       int *edad;
       float altura;
    } persona1;
    
    
    persona1.edad = (int *)malloc(sizeof(int)*1); //reservo 1 entero =4 bytes
    if(persona1.edad == NULL){
        fprintf(stderr,"Allocation Error");
        exit(1);
    }

	*persona1.edad = 28;
	char n[100] = "Eduardo";
	persona1.nombre = n;
	persona1.altura = 1.8;
	
	
    struct person { //struct with instances that are pointers
        int *age;
        char *name;
    } 
	*tony, 
	*santi;
	
	
	tony = (struct person *)malloc(sizeof(struct person)*1);
    if(tony == NULL){
        fprintf(stderr,"Allocation Error");
        exit(1);
    }
    
    santi = (struct person*)malloc(sizeof(struct person)*1);
    if(santi == NULL){
        fprintf(stderr,"Allocation Error");
        exit(1);
    }

	tony->name = "Edward"; //is not necessary to alloc memmory for 
    santi->name = "Santiago";//the char type they are kind of arrays

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

    printf("Nombre persona1: %s \n", persona1.nombre);
    printf("Edad persona1: %i \n", *persona1.edad);
    printf("Altura persona1: %.1f \n", persona1.altura);
    
    printf("My age: %i \n", tony->age);
    printf("My name: %s \n", tony->name);
    
    printf("His age: %i \n", *santi->age);
    printf("His name: %s \n", santi->name);

    return (0);
}