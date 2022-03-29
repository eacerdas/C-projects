#include<stdio.h>
#include<stdlib.h>

struct person
{
    char name[15];
    int age;
};

struct person *allocate_structure(){
	struct person *s;
	s = (struct person *)malloc(sizeof(struct person)*1);
	if(s == NULL){
		fprintf(stderr, "failed to allocate"); exit(1);
	}

	return(s);
}

struct person fill_structure(struct person *s1){
	printf("Enter name: "); scanf ("%s", s1->name);
  	printf("Enter age: "); scanf("%d", &s1->age);
}

struct person display_structure(struct person *s2){
	printf("\n%s is %i years old.", s2->name, s2->age);
}

int main () {

struct person *tony = allocate_structure();
fill_structure(tony);
display_structure(tony);

}