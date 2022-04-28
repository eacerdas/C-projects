#include <stdio.h>
#include <stdint.h>

/* directivas de pre - procesamiento */
# define LED_REGISTERS_MEMORY_ADD4 0 x10000004
# define LED_REGISTERS_MEMORY_ADD8 0 x10000008
# define word32 uint32_t // 32 - bit word core

int main ( void )
{
volatile word32 * wr_addr4 = ( word32 *) LED_REGISTERS_MEMORY_ADD4 ; // direccion donde se escribe el resultado
volatile word32 * wr_addr8 = ( word32 *) LED_REGISTERS_MEMORY_ADD8 ; //direccion donde se escribe el resultado

/*
realiza las multiplicaciones
de los numeros solicitados
*/
* wr_addr4 = 1;
* wr_addr8 = 7;
* wr_addr4 = 2;
* wr_addr8 = 15;
* wr_addr4 = 6;
* wr_addr8 = 10;

* wr_addr8 = 10;
  
return 0;

}
