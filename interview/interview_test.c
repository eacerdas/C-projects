/* For an easier understanding, here you have a flowchart that represents the program: 
https://miro.com/app/board/uXjVOAZ6mr8=/?invite_link_id=598652406637  
*/
//------------------------------------------------------------------------------
/* Problem statement:
Provide a solution to control the temperature of a liquid in a container. The 
temperature target is 100 C +- 5 C. If the liquid level falls below half-full 
the heating shall be turned off, if it rises above half-full, the heating 
shall be turned on. There is a sensor that samples the temperature of the 
liquid every 6 seconds. This sensor is mapped to a 16-bit read-only hardware 
register that can be accessed directly at the memory location 0xFF00. The values 
at the register are in Celsius.
There is a sensor that samples the level of the liquid every 2 seconds. This sensor 
is mapped to an 8-bit read-only hardware register that can be accessed directly at 
the memory location 0xFF02. The values at the register are in percentages (0-100%).
There is a heating element that can be used to control the temperature of the liquid. 
This heating element is mapped to an 8-bit read-write hardware register that can be 
accessed directly at the memory location 0xFF03. The values at the register are in 
percentages (0-100%). The percentages represent how much power is applied to the 
heating element.Write the code to create a control loop for the problem statement 
above.
You can assume further details as long as you document them in your justification.*/

//------------------------------------------------------------------------------

/* Justification:
For this problem I would definitely use a microcontroller, makes sense, due to its 
versatility in terms of output control and input reading (GPIOs). There are some 
things that must be assumed because no specific microcontroller model was indicated 
to work with. Also, there is no actual container to measure the level and temperature 
values. If we read the memory addresses indicated in the problem, for reading the 
container's variables status, we will probably find garbage values in there, and 
that is because there is no device programmed to write useful information to these 
addresses, at least not in my PC. This is usefull for low level embedded programming, 
not for windows based machines like mine [5].

I am going to create a tester, to solve this situation. I'm gonna generate random 
values in two arbitrary addresses, one for temp and one for level (within the range, 
for example, the level will be a 8-bit integer between 0 and 100, so that 100% is 
not exceeded at any time and to comply with the statement requirements).

Also, you have the option to run the program as you asked for. Just use the #define 
TEST, where if TEST -> 1, you will run the tester ussing arbitrary pointers that can 
be accessed and manipulated, otherwise if TEST -> 0, the program is gonna use the 
addresses proposed in the statement.

How does the program work?

The program reads the values from the variables using polling, it doesn't matter if 
they are randomly generated in the tester or read from memory, when the data is entered 
in the variables, it will automatically start the control loop, then by itself, it is 
gonna try to reach the desired value for temperature in this case set for 100 degrees 
celsius.

How does the tester work?

It uses a linear function to calculate the temperature using the power of the heater,
so it will reduce the power of the heater as the temperature of the liquid gets closer 
to the desired temp. When the temperature readed is over the desired temperature value, 
it simply turns off the heater to let the liquid cool down. In this case, to simulate 
this, I just reduced 1 degree to the liquid for every cicle untill it reaches the 
desired temperature.

The tester, will generate a random value for the temperature and another value for the 
level, the control loop is gonna work with those values and show the user the results
in the terminal, then, the user can enter the new values for temperature and level,
starting the process again, untill the temp reaches the desired value or simply do not
take action because the level is too low. 

All the information is shown in a terminal. Personally, I used a compiler in Windows and
all my tests went right.

//------------------------------------------------------------------------------

Things that I have assumed:

1. Minimum temp for the container's content is 25 degrees celsius, assuming 25 degrees 
as the env temperature. Desired temperature is 100 degrees (statement says 95-105).

2. The memory where the heater status will be stored is already reserved or accessible, 
in this case, in a windows based machine I am having issues to read and write in the 
specific locations that you have indicated in the statement.

3. Even if I could read the memory addresses given, the values don't exist, so I am 
using arbitrary pointers with a malloc to ensure they have the exact same size than 
the ones proposed in the statement ***This is only for the tester***.

4. You did not provide me with a tester, so I did mine. The program, as you asked for, 
compiles, but there is not any way for me to know if is gonna work for you, so I set a 
demonstration with my tester in case you want to run it, and for me to debug the code.

5. I don't know what the volume of the container is or what kind of liquid is inside, 
so I can't know how is it going to be heated. I'm gonna assume that every cicle of the 
loop, the temp will change in a fraction of the power of the heater, and to cool it 
down, I will just turn off the heater for it to be cool down by itself. ***This is 
only for the tester***.

6. The heater at 1% is at least 100 degrees celsius. That's because we want the heater 
to introduce energy to the system, if the heater at low percentages of power is below 
100 degrees, it would not be capable of making the liquid reach the desired value of 
100 degrees. In the real life, these parameters must be adjusted, theres a big 
possibility of this to fail in a real system, but I need real parameters of the 
container and the heater to work with them. */

//------------------------------------------------------------------------------

/* Corner cases considered:
1. The container level begins to decrease due to liquid leakage or because the liquid is 
evaporating: If the level of the container is less than 50%, the heater is automatically 
turned off, so this is covered.

2. The initial temperature of the liquid is greater than the desired value: in this case, 
the control loop will turn off the heater so the liquid cools down at least untill it is 
1 degree below the desired temperature. */

//------------------------------------------------------------------------------

#include <stdio.h>   // For input/output functions like printf or scanf
#include <stdlib.h>  // For memory allocation
#include <time.h>    // To use random numbers with a "real" random seed.
#include <stdint.h>  // Necessary to use 8 and 16 bit integers.
#include <inttypes.h> // To print the special integers

#define TEST 1 // TEST 0 -> runs normally, TEST 1 -> runs tester

/* Looking at the addresses, we have 2 bytes to store an integer that represents the 
temp, so it can not be a normal integer because they are 4 bytes long. The same 
applies to the level, but in this case the integer must be 8 bits long (1 byte). */

#define TEMP_ADDRESS 0xFF00 //->16-bit address where the temp is gonna be read
#define LEVEL_ADDRESS 0xFF02 //-> 8-bit address where the level is gonna be read

/* For the heater, it must be mapped in an 8-bit integer too, there is no need to use 
more than that, because is gonna represent a value in percentage between 0-100, 8 
bits are enough to represent up to 255 values. */

#define HEATER_ADDRESS 0xFF03 // 8-bit address where heating element will be mapped

/* I decided to use a struct to represent the container: */
struct container {
    uint16_t *temp;
    uint8_t *level;
    uint8_t *heater;
};

/* Declaration of all the functions used, more detail about each one of them in their 
definition below the main */

void generate_values(uint16_t *t, uint8_t *l);
void read_values(uint16_t *t, uint8_t *l);
void user_enter_values(uint16_t *t, uint8_t *l);
void write_heater_value(uint8_t *h);
void tester_control_loop(uint16_t *t, uint8_t *l, uint8_t *h);
void real_control_loop(uint16_t *t, uint8_t *l, uint8_t *h);
void print_results(uint16_t *t, uint8_t *l, uint8_t *h);

int main(){
    
    // Setup:
    
    // Seed for random numbers
	srand((unsigned int)time(0)); 
	
    // Declare an instance called liquid of the struct container
	struct container liquid;
	
	// Allocate the memory for the pointer integers of the instance
	liquid.temp = (uint16_t *)malloc(sizeof(uint16_t)*1);
	if(liquid.temp == NULL){ //checks for an error to end the execution
		fprintf(stderr, "Failed to allocate"); 
		exit(1);
	}
	
	liquid.level = (uint8_t *)malloc(sizeof(uint8_t)*1);
	if(liquid.level == NULL){ //checks for an error to end the execution
		fprintf(stderr, "Failed to allocate"); 
		exit(1);
	}
	
	liquid.heater = (uint8_t *)malloc(sizeof(uint8_t)*1);
	if(liquid.heater == NULL){ //checks for an error to end the execution
		fprintf(stderr, "Failed to allocate"); 
		exit(1);
	}
	
	// Initialize the pointers value in 0, using typecast, just in case.
	*liquid.temp = (uint16_t)0;
	*liquid.level = (uint8_t)0;
	*liquid.heater = (uint8_t)0;
	
	// I want to separate the tester from the normal flow, so:
	if (TEST == 1){
	    generate_values(liquid.temp, liquid.level); // generates random values -> test
	    printf("Example run with random values, the info will be displayed below. \n \n");
		print_results(liquid.temp, liquid.level, liquid.heater);
		
		// Then, we have the typical infinite loop of a microcontroller:
		while(1){
	        tester_control_loop(liquid.temp, liquid.level, liquid.heater);
	        print_results(liquid.temp, liquid.level, liquid.heater);
		}
	}
	// But the thing that we want is not the tester so:
	else if (TEST == 0){
	    // In this case, we dont want to ask the user for an input, we want to read data
	    while(1){
	        /* Reads values for level and temp every cicle, then, depending on the level 
	        and temp, decides either to turn on or off the heater, as the statement 
	        proposes */
	        read_values(liquid.temp, liquid.level); 
	        
	        /* Based in the values previously read, the control loop tries to reach 
	        the desired temperature turning on the heater if the temp is too low or
	        turning off the heater if the temp is over the desired value */
	        real_control_loop(liquid.temp, liquid.level, liquid.heater);
	        
	        /* Lastly, the value for the percentage (0-100) of power of the heater
	        is stored in the memory address given at the statement 0xFF03 every 
	        cicle*/
	        write_heater_value(liquid.heater);
	    }
	}
}

// That was all for the main, now lets take a look at the functions:

// Function that generates random values for temp and level, for the tester to work
void generate_values(uint16_t *t, uint8_t *l){ 
	//NOTE: take into consideration, assumption #1
	*t = rand()%86+25; //number in range 25-110, 
    *l = rand()%101; //number in range 0-100
    
}

// For the real loop, we are gonna read values instead of generate them randomly
void read_values(uint16_t *t, uint8_t *l){
	/* Reads temp and level from the corresponding addresses given at the statement 
	and defined previously as TEMP_ADDRESS and LEVEL_ADDRESS*/
	printf("Reading temp information from: %p \n", TEMP_ADDRESS);
	uint16_t temp = *(uint16_t*)TEMP_ADDRESS;//0xFF00
	*t = temp; //passes the value to the pointer, to be used
	
	printf("Reading level information from: %p \n", LEVEL_ADDRESS);
	uint8_t level = *(uint8_t*)LEVEL_ADDRESS; //0xFF02
	*l = level; //passes the value to the pointer, to be used
}

/* For the tester, we need the user to input values too, just to check different 
scenarios, this function asks the user for the values of temp and level */
void user_enter_values(uint16_t *t, uint8_t *l){
	printf("\nPlease enter a new value for the temperature: ");
	scanf("%d", t);
	printf("Please enter a new value for the level: ");
	scanf("%d", l);
}

// We want to store the value of the power for the heater in 0xFF03
void write_heater_value(uint8_t *h){
    volatile uint8_t *p = (volatile uint8_t *)HEATER_ADDRESS; //now pointer *p has 0xFF03 address
    printf("Writing heater information in the address: %p \n", p);
    *p = *h; //assign the value of *liquid.heater to the content of the pointer *p
}

// Now I'm going to define the control loops, for tester and the real loop
void tester_control_loop(uint16_t *t, uint8_t *l, uint8_t *h){
	/* if the level is below 50%, the heater is turned off, otherwise, the heater power is defined 
	with a linear function that decreases the power as the temperature increases.
	NOTE: take into consideration, assumption #1.*/
	
    if(*l < 50 || *t >= 100){
		*h = 0; //heater off
	}else{
		*h = ((*t-100)/-0.75)-1; //heater on (% depends on temperature of liquid)
	}
	
	uint16_t desired_temp = 100;
	uint16_t current_heat = *h;
	
	int error = desired_temp - *t;
	
	/* Not only tells the user that the liquid is being heated up, but also, simulates the effect on 
	the temperature */
	if (error > 0 && *l >= 50){
		puts("Heater must be on, temp under the desired, heating up. ");
		
		// Temperature increments depending on the power of the heater
		*t = *t + 1 + (0.1* (current_heat));
	}
	
	/* Not only tells the user that the liquid is being cooled down, but also, simulates the effect on
	the temperature */
	else if(error < 0 && *l >= 50){
		puts("Heater must be off, temp is over the desired, letting it cool down. ");
		
		// Temperature decreases 1 degree per cicle if it is over the desired
		*t = *t - 1;	
	}
	
	else if(error > 0 && *l < 50){
		puts("Heater must be off, level is too low. ");
        user_enter_values(t,l);
	}
	
	else if(error < 0 && *l < 50){
		puts("Heater must be off, level is too low and temp over the desired. \n \n \n \n ");
        user_enter_values(t,l);
	}
	
	else{
		puts("\n Desired value reached successfully. \n \n \n \n");
        user_enter_values(t,l);
	}
}

// The real control loop is almost the same function, with a couple of differences
void real_control_loop(uint16_t *t, uint8_t *l, uint8_t *h){
	/* In this case, we are not manipulating the temp, just reading the memory with the corresponding
	function and then using that value as an input for the control loop, the important part of this 
	function that here is defined what is gonna be the next value for the heater (on/off)*/
	
	/* if the level is below 50% or the temp is over the desired value, the heater is turned off, 
	otherwise, the heater power is defined with a linear function that decreases the power as the 
	temperature increases.
	NOTE: take into consideration, assumption #1.*/
	
    if(*l < 50 || *t >= 100){
		*h = 0; //heater off
	}else{
		*h = ((*t-100)/-0.75)-1; //heater on (% depends on temperature of liquid)
	}
	
	uint16_t desired_temp = 100;
	
	int error = desired_temp - *t;
	
	if (error > 0 && *l >= 50){
		puts("Heater must be on, temp under the desired, heating up. \n ");
	}
	
	else if(error < 0 && *l >= 50){
		puts("Heater must be off, temp is over the desired, letting it cool down. \n ");	
	}
	
	if(error > 0 && *l < 50){
		puts("Heater must be off, level is too low. \n ");
	}
	
	else if(error < 0 && *l < 50){
		puts("Heater must be off, level is too low and temp over the desired. \n \n \n \n ");
	}
	
	else{
		puts("\n Desired value reached successfully. \n");
	}
}

/* Last but not least, we need a function that displays the results as feedback in the
terminal there is not a lot to explain in this one, just displays info every cicle 
for testing purposes */
void print_results(uint16_t *t, uint8_t *l, uint8_t *h){
	printf("-------------------------------------------------------- \n");
		if(*h == 0 || *h >= 100){
				printf("Temperature: %d, Level: %d, The heater is: off (0%%).\n", *t, *l);	
		}else{
			printf("Temperature: %d, Level: %d, The heater is: using %d%% of its power.\n", *t, *l, *h);
		}
}

/* bibliography -> pages consulted:

1. define sintax-> https://www.techonthenet.com/c_language/constants/create_define.php

2. 8 and 16 bit integers -> https://ro-che.info/articles/2017-01-25-word8-space

3. assign an address to a pointer: https://stackoverflow.com/questions/4532000/how-to-assign-pointer-address-manually-in-c-programming-language

4. wait for an user input -> https://stackoverflow.com/questions/18801483/press-any-key-to-continue-function-in-c

5. read specific memory address -> https://stackoverflow.com/questions/18741219/how-to-read-a-value-from-an-absolute-address-through-c-code

6. Special mention to these two courses where I have learned most of the things I know in C:
    6a. Advanced C programming -> https://www.linkedin.com/learning/advanced-c-programming/solution-incrementing-a-pointer-14681579?autoplay=true&resume=false&u=2101329
    6b. Master C language pointers -> https://www.linkedin.com/learning/master-c-language-pointers/working-with-pointers-in-structures?autoplay=true&resume=false&u=2101329

7. Also, the knowlege acquired through the courses: microcontrollers laboratory 
and digital circuits laboratory was very useful for topics such as memory addresses 
and GPIOs.

*/
