#include <stdint.h>

#define LED_REGISTERS_MEMORY_ADD 0x10000000
#define LOOP_WAIT_LIMIT 100

static void putuint(uint32_t i){
    *((volatile uint32_t *)LED_REGISTERS_MEMORY_ADD) = i;
}

static void delay(){
    uint32_t counter = 0;
    while (counter < LOOP_WAIT_LIMIT){
        counter++;
    }
}

void main(){

    while (1){
        uint32_t z = 0;
        uint32_t x = 0;
        uint32_t y = 1;
        putuint(z);
        delay();

        while (z < 10946){
            z = x + y;
            x = y;
            y = z;

            if (z % 2 == 0){
                putuint(z);
                delay();
            }
        }
    }
}
