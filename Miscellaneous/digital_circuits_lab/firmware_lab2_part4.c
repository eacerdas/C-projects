#include <stdio.h>
#include <stdint.h>

/* directivas de pre - procesamiento */
#define LED_REGISTERS_MEMORY_ADDC 0 x1000000C
#define LED_REGISTERS_MEMORY_ADD10 0 x10000010
#define word32 uint32_t // 32 - bit word core

int main (void)
{
volatile word32 * wr_addrC = (word32 *) LED_REGISTERS_MEMORY_ADDC; // direcciondonde se escribe el numero
volatile word32 * wr_addr10 = (word32 *) LED_REGISTERS_MEMORY_ADD10; //direccion donde se escribe el numero

/* numeros a multiplicar */
* wr_addrC = 120;
* wr_addr10 = 5; // 600
* wr_addrC = 47; // 235
* wr_addr10 = 725; // 34075
* wr_addrC = 7628900; // 5530952500
* wr_addr10 = 611; // 4661257900
* wr_addrC = 39916800;
* wr_addr10 = 1023;
* wr_addr10 = 9628800;
* wr_addr10 = 9628800;

return 0;
}
