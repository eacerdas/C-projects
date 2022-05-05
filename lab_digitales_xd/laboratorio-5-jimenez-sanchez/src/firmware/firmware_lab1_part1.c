#include <stdint.h>

#define LED_REGISTERS_MEMORY_ADD 0x10000000

static void putuint(uint32_t i) {
	*((volatile uint32_t *)LED_REGISTERS_MEMORY_ADD) = i;
}

void main() {
	uint32_t delay = 4000000;
	uint32_t number_to_display = 0;
	uint32_t counter = 0;

	while (1) {
		counter = 0;
		putuint(number_to_display);
		number_to_display++;

		if(number_to_display >= 9) number_to_display = 0;
		
		while (counter < delay) {
			counter++;
		}
		
	}
}
