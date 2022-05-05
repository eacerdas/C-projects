#include <stdio.h>
#include <stdint.h>

#define MEMORY_ADD 0x10000000

uint32_t fact(uint32_t number)
{
    uint32_t factorial_result = 1;

    for (int counter = 1; counter <= number; counter++)
        factorial_result *= counter;

    return factorial_result;
}

void main()
{

    uint32_t z = 5;
    uint32_t x = 7;
    uint32_t y = 10;
    uint32_t h = 12;
    uint32_t delay = 30;

    uint32_t *ptr = (uint32_t *)MEMORY_ADD; //type cast the addr to a uint pointer

    uint32_t num1 = fact(z);
    *ptr = num1;

    uint32_t num2 = fact(x);
    *ptr = num2;

    uint32_t num3 = fact(y);
    *ptr = num3;

    uint32_t num4 = fact(h);
    *ptr = num4;

    while(delay) {
	delay--;
    }
}
