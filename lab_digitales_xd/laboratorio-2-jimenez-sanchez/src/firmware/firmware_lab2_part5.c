#include <stdio.h>
#include <stdint.h>

#define A_DIR 0x0FFFFFF0;
#define B_DIR 0x0FFFFFF4;
#define OUTBYTE_DIR 0x10000000;
void main()
{
    uint32_t *ptr1 = (uint32_t *)A_DIR;
    uint32_t *ptr2 = (uint32_t *)B_DIR;
    uint32_t *outbyte_ptr = (uint32_t *)OUTBYTE_DIR;
    
    for(int i = 0; i<=15; i++){
        *ptr1 = i;
        for(int j = 0; j<=15; j++){
            *ptr2 = j;
            *outbyte_ptr = *((volatile uint32_t *)0x0FFFFFF8);
        }
    }
}
