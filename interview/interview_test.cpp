/*For this problem I would definitely use a microcontroller,
makes sense, due to its versatility in terms of controling outputs 
and reading inputs (GPIOs). There are some things that must be
assumed because no specific microcontroller model is indicated 
to work with. Also, there is no actual container to 
measure the level and temperature values. If we read the memory 
addresses indicated in the problem, for reading the container's 
variables status, we will probably find garbage values in there,
and that is because there is no device programmed to write useful 
information to these addresses, at least for this application. 

I am going to solve this by entering random values ​​in those memory 
addresses (within the range, for example, the level will be a 8-bit 
integer between 0 and 100, so that 100% is not exceeded at any time). 

The program receives the values to start with the control loop, then
by itself, it is gonna try to reach the desired value for temperature */

/*Things assumed:
1. Minimum temp for the container's content is 25 degrees celsius.

2. Maximum heat provided for the heater is 110 degrees celsius.

3. the memory where the heater status will be stored is already
reserved or accessible, in this case, in a CISC based machine, I 
am not sure about what's inside a random memory location so I can 
not write there.

4. You do not have a tester, so I did mine. The program as you asked for it
compiles, but there is not any way for me to know if is gonna work for you,
so I set a demonstration with my tester.

5. There is no way for me to read the values because they don't exist,
so I am using arbitrary pointers with a malloc to ensure they have the 
exact same size than the ones proposed in the statement.

6. I don't know which are neither the volume of the container nor the 
type of liquid that is inside, so I can not know how is it gonna be
heated up. I'm gonna assume that every cicle of the loop the temp will
change in a fraction of the power of the heater.
*/

#include <stdio.h>   //for input/output functions like printf or scanf
#include <stdlib.h>  //for memory allocation
#include <time.h>    //to use random numbers with a "real" random seed.
#include <stdint.h>  //necessary to use 8 and 16 bit integers.
#include <inttypes.h> //to print the specal integers

/*Looking at the addresses, we have 2 bytes to store an integer 
that represents the temp, so it can not be a normal integer 
because they are 4 bytes long. The same applies to the level, 
but in this case the integer must be 8 bits long (1 byte).*/

#define TEST 0 // -> change this value in order to run the code with the 
//tester or just to read and write as the statement proposes

#define TEMP_ADDRESS 0xFF00 //->16-bit value we want it between 95-105
#define LEVEL_ADDRESS 0xFF02 //-> 8-bit value between 0-100

/*For the heater, it must be mapped in an 8-bit integer too, 
there is no need to use more than that, because is gonna 
represent a value in percentage between 0-100, 8 bits
are enough to represent up to 255 values. */

#define HEATER_ADDRESS 0xFF03 // ->8-bit value between 0-100

//define a struct that is gonna represent the container
struct container {
    uint16_t *temp;
    uint8_t *level;
    uint8_t *heater;
};

void generate_values(uint16_t *t, uint8_t *l);
void check_level(uint16_t *t, uint8_t *l, uint8_t *h);
void write_heater_value(uint8_t *h);
void control_temp(uint16_t *t, uint8_t *l, uint8_t *h);

int main()
{
    //setup:
	srand((unsigned int)time(0));
	
    //declare an instance called liquid for 
    //the container that has temp and level
	struct container liquid;
	
	//allocate the memory for the integers (just for the tester)
    liquid.temp = (uint16_t *)malloc(sizeof(uint16_t)*1);
    if(liquid.temp == NULL){
		fprintf(stderr, "Failed to allocate"); exit(1);
	}
    
	liquid.level = (uint8_t *)malloc(sizeof(uint8_t)*1);
    if(liquid.level == NULL){
		fprintf(stderr, "Failed to allocate"); exit(1);
	}
	
	
	/*function that generates random values for temp and level, 
	just to test the programbecause we have not any real container 
	to measure its values in this exercise*/
	generate_values(liquid.temp, liquid.level);
	
    //infinite loop:
    
	if (TEST == 1){
		while(1){
			printf("-------------------------------------------------------- \n");
	        printf("Current temp value: %d \n", *liquid.temp);
	        printf("Current level value: %d \n \n", *liquid.level);
			
	        check_level(liquid.temp, liquid.level, liquid.heater);
			write_heater_value(liquid.heater);
	        control_temp(liquid.temp, liquid.level, liquid.heater);
    	}	
	}
	else if(TEST == 0)
	{
		return(0);
	}
	        
	return(0);
}

//generates random values to test the program
void generate_values(uint16_t *t, uint8_t *l){ 
	*t = rand()%86+25; //number in range 25-110, 
    *l = rand()%101; //number in range 0-100
    //NOTE: take into consideration, assumptions #1 and #2.
}

void read_values(uint16_t *t, uint8_t *l){
	*t = rand()%86+25; //number in range 25-110, 
    *l = rand()%101; //number in range 0-100
}

//checks the level of the liquid
void check_level(uint16_t *t, uint8_t *l, uint8_t *h){
	//if the level is below 50%, the heater is turned off, 
	//otherwise, the heater power is defined with a linear 
	//function that increments as the temperature decreases
	//NOTE: take into consideration, assumptions #1 and #2.
	
	if(*l < 50 || *t >= 105){
		*h = 0;
	}else{
		*h = (*t-100)/-0.75;
	}
	
	printf("The heater is ");
		if(*h == 0 || *h >= 100){
				printf("off (0%%).\n");	
		}else{
			printf("using %d%% of its power.\n", *h);
		}
}

//writes the value 0-100 in the memory address proposed
void write_heater_value(uint8_t *h){
    
    volatile uint8_t *p = (uint8_t *)HEATER_ADDRESS;
	
	/*the line below stores the information in the 
    corresponding memory address but is commented 
    because it ends my execution, I can not write in that 
	memory address because is not allocated for this.*/
	
	//*p = *h; //uncomment this line to write in the desired direction

	printf("Writing heater information in the address: %p \n", p);
	printf("-------------------------------------------------------- \n");
}

//control loop, to reach the desired value of temp
void control_temp(uint16_t *t, uint8_t *l, uint8_t *h){
	//trying to reach the desired value as soon as possible:
	uint16_t current_heat = *h;
	uint16_t desired_temp = 100;
	
	int error = desired_temp - *t;
	
	//printf("The error is %i \n", error);
	
	if (error > 0 && *l >= 50){
		*t = *t + 1 +(0.1* (current_heat));
	}
	
	else if(error < 0 && *l >= 50){
		*t = *t - 1;	
	}
	
	else if(error > 0 && *l < 50){
		puts("Heater is not gonna take action, level is too low. \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n");
		puts("Press enter to generate random numbers for a new test. \n");
        getchar();
        generate_values(t, l);
	}
	
	else if(error < 0 && *l < 50){
		puts("Heater is not gonna take action, level is too low. \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n");
		puts("Press enter to generate random numbers for a new test. \n");
        getchar();
        generate_values(t, l);
	}
	
	else{
		puts("Process ended successfully. \n \n \n \n \n \n");
		puts("Press enter to generate random numbers for a new test. \n");
        getchar();
        generate_values(t, l);
	}
}

/* pages consulted:
define sintax-> https://www.techonthenet.com/c_language/constants/create_define.php
8 and 16 bit integers -> https://ro-che.info/articles/2017-01-25-word8-space
assign an address to a pointer: https://stackoverflow.com/questions/4532000/how-to-assign-pointer-address-manually-in-c-programming-language
wait for an user input -> https://stackoverflow.com/questions/18801483/press-any-key-to-continue-function-in-c


*/