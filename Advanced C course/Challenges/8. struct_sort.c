#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
	srand((unsigned int)time(0));
	struct weather {
		char day[10];
		int temp;
	};


	struct weather week[7] = {
		{ "Sunday", rand()%101},
		{ "Monday", rand()%101 },
		{ "Tuesday", rand()%101 },
		{ "Wednesday", rand()%101 },
		{ "Thursday", rand()%101 },
		{ "Friday", rand()%101},
		{ "Saturday", rand()%101 }
	};

    for(int j=0; j<7;j++){
        for(int k=j+1; k<7; k++){
            if(week[k].temp < week[j].temp){
            	struct weather t;
                t = week[k];
                week[k] = week[j];
                week[j] = t;
            }
        }
    }

	puts("This week's forecast:");
	for(int x=0;x<7;x++)
		printf("%10s %i degrees\n",
				week[x].day,
				week[x].temp);

	return(0);
}