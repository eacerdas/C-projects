#include <stdio.h>
#include <stdlib.h>

int main()
{
	struct weather {
		char *day;
		float temp;
	}today;
	
	today.day = (char *)malloc(sizeof(char)*1);
	
	today.day = "Sunday";
	today.temp = 72.5;
	puts("Today's forecast:");
	printf("%10s %.1f degrees\n",
			today.day,
			today.temp);

	return(0);
}

