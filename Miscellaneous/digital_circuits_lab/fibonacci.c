#include <stdint.h>

#define LED_REGISTERS_MEMORY_ADD 0x10000000
#define LOOP_WAIT_LIMIT 100

static void putuint(uint32_t i)
{
    *((volatile uint32_t *)LED_REGISTERS_MEMORY_ADD) = i;
}

void main()
{
    uint32_t counter = 0;
    uint32_t t1 = 0, t2 = 1; //first two elements of the series
    uint32_t nextTerm = t1 + t2; //3rd element of the series
    while (1)
    {
        if(nextTerm%2 == 0)
		    putuint(nextTerm);
        if(nextTerm == 10946)
        {
            t1 = 0, t2 = 1;
            nextTerm = t1 + t2;
        }	
        t1 = t2;
        t2 = nextTerm;
        nextTerm = t1 + t2;
        counter = 0;
        while (counter < LOOP_WAIT_LIMIT)
        {
            counter++;
        }
    }
}
