#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define SIZE 16

/* define structure externally to ensure
   that it's available to all functions */
struct item {
	int id;
	char name[SIZE];
	float price;
	struct item *next;
};

/* allocate a new structure */
struct item *allocate(void)
{
	struct item *p;

	p = (struct item *)malloc( sizeof(struct item) * 1);
	if( p==NULL )
	{
		fprintf(stderr,"Unable to allocate memory\n");
		exit(1);
	}

	return(p);
}

/* fill the structure */
void fill(struct item *s, int i)
{
	char *fruit[] = { "apples", "bananas", "grapes", "strawberries", "watermelon" };
	float prices[] = { 1.20, 2.58, 2.09, 2.40, 0.51 };

	s->id = i;
	strcpy(s->name,fruit[i]);
	s->price = prices[i];
}

/* output the list */
void output(struct item *s)
{
	while( s!=NULL )
	{
		printf("%d: %s for $%.2f/pound\n",
				s->id+1,
				s->name,
				s->price
			  );
		s = s->next;
	}
}

int main()
{
	struct item *first,*current,*temp;
	int x;

	/* build a linked list with 5 items */
	for(x=0; x<5; x++)
	{
		/* allocate initial structure */
		if( x==0 )
		{
			first = allocate();
			current = first;
		}
		else
		{
			/* set the next structure link */
			current->next = allocate();
			/* make the next structure the
			   current structure */
			current = current->next;
		}
		fill(current,x);
	}
	/* cap the final structure */
	current->next = NULL;

	/* output the list */
	output(first);

	/* insert a new structure after the 2nd structure */
	puts("Inserting a new structure...");

	current = first;
	/* locate the 2nd structure */
	while(current->id!=1)
	{
		current = current->next;
		if( current==NULL )
		{
			fprintf(stderr,"Structure out of bounds\n");
			exit(1);
		}
	}

	/* allocate the new structure */
	temp = allocate();

	/* fill the new structure */
	temp->id = 5;
	strcpy(temp->name,"apricots");
	temp->price = 1.36;
	/* reference the following structure */
	temp->next = current->next;
	/* update the current structure */
	current->next = temp;

	/* output the updated list */
	output(first);

	return(0);
}
