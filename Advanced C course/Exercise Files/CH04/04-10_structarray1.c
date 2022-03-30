#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main()
{
	struct weather {
		char *day;
		float *temp;
	};
	struct weather week[7];
	int x;
	
	for(int i=0; i<7;i++){
		week[i].day = (char *)malloc(sizeof(char)*1);
		week[i].temp = (float *)malloc(sizeof(float)*1);
	}
	
	week[0].day = "Sunday";  *week[0].temp = 72.5;
	week[1].day = "Monday";  *week[1].temp = 68.4;
	week[2].day=  "Tuesday";   *week[2].temp = 75.0;
	week[3].day=  "Wednesday"; *week[3].temp = 73.8;
	week[4].day=  "Thursday";  *week[4].temp = 65.1;
	week[5].day=  "Friday";    *week[5].temp = 72.8;
	week[6].day=  "Saturday";  *week[6].temp = 75.2;

	puts("This week's forecast:");
	for(x=0;x<7;x++)
		printf("%10s %.1f degrees\n", week[x].day, *week[x].temp);
	return(0);
}

