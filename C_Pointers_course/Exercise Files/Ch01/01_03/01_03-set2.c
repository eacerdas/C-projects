#include <stdio.h>

void set(int *x, int *y)
{
	*x = 100;
	*y = 200;
}

int main()
{
	int a,b;
	int *x,*y;

	/* assign the pointers to the variable's
	   addresses */
	x = &a;
	y = &b;

	/* send the addresses to the function via
	   the pointers */
	set(x,y);
	printf("A = %d and B = %d\n",*x,*y);

	return(0);
}
