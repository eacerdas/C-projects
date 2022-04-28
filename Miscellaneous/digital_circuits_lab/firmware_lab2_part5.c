#include <stdint.h>

#define LED_REGISTERS_MEMORY_ADD 0 x10000000
#define DIR_REG1 0 x0FFFFFF0
#define DIR_REG2 0 x0FFFFFF4
#define DIR_SAVE 0 x0FFFFFF8

void main () {

  uint32_t counter1 = 0;
  uint32_t counter2 = 0;
  uint32_t * pointer1;
  uint32_t * pointer2;
  uint32_t * pointerMEM_ADD;

  /* Escribir los numeros del 0 al 15 */

   for ( counter1 = 0 ; counter1 <16; counter1 ++){
   pointer1 = (uint32_t *) DIR_REG1;
  * pointer1 = counter1;

     for ( counter2 = 0 ; counter2 <16; counter2 ++) {
     pointer2 = (uint32_t *) DIR_REG2;
     * pointer2 = counter2;

    pointerMEM_ADD = (uint32_t *) LED_REGISTERS_MEMORY_ADD ;
    * pointerMEM_ADD = *((volatile uint32_t *) DIR_SAVE ) ;

    }
  }
}
