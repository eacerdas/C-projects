#include <stdint.h>
#define LED_REGISTERS_MEMORY_ADD 0x10000000
#define LOOP_WAIT_LIMIT 100
#define ACCELEROMETER_Y 0x20000000
#define ACCELEROMETER_Z 0x30000000

static void putuint(uint32_t i) {
*((volatile uint32_t *)LED_REGISTERS_MEMORY_ADD) = i;
}
static void write_to_addr(uint32_t addr, uint32_t data) {
*((volatile uint32_t *)addr) = data;
}


void main() {
    uint32_t number_to_display = 0;
    uint32_t counter = 0;
    uint32_t acc_z = 0;
    uint32_t acc_y = 0;

    while (1) {
        counter = 0;
        acc_z = *((volatile uint32_t *)ACCELEROMETER_Z); //read
        acc_y = *((volatile uint32_t *)ACCELEROMETER_Y); //read

        write_data(0x0000, acc_z);

        while (counter < LOOP_WAIT_LIMIT) counter++; //delay
    
        write_data(0x1000, acc_y);

    }
}