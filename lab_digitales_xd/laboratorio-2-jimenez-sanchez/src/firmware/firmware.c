#include <stdio.h>
#include <stdint.h>

#define A_DIR 0x0FFFFFF0;
#define B_DIR 0x0FFFFFF4;
#define OUTBYTE_DIR_L 0x10000000;
#define OUTBYTE_DIR 0x10000008;

uint32_t count1s(uint32_t data){
    int count1 = 0;
    int contador_iter = 0;
    while(contador_iter < 64){
        if ( data & 1){
            count1++;
        }
        data = data >> 1;
        contador_iter++;
    }
    return count1;
}

void write( uint32_t* ptr1, uint32_t* ptr2, uint32_t data1, uint32_t data2, uint32_t *outbyte_ptr_l ){
    
    uint32_t lsb, msb;
    uint32_t count = 0;

    *ptr1 = data1;
    *ptr2 = data2;

    lsb = *((volatile uint32_t *)0x0FFFFFF8);
    msb = *((volatile uint32_t *)0x0FFFFFFC);
    count = count1s(lsb) + count1s(msb);
    *outbyte_ptr_l = count;
}


void main(){
    uint32_t *ptr1 = (uint32_t *)A_DIR;
    uint32_t *ptr2 = (uint32_t *)B_DIR;
    uint32_t *outbyte_ptr_l = (uint32_t *)OUTBYTE_DIR_L;

    write(ptr1, ptr2, 25, 7, outbyte_ptr_l);
    write(ptr1, ptr2, 635, 7, outbyte_ptr_l);
    write(ptr1, ptr2, 635, 1023, outbyte_ptr_l);
    write(ptr1, ptr2, 2157297371, 1023, outbyte_ptr_l);
    write(ptr1, ptr2, 2157297371, 562, outbyte_ptr_l);
    write(ptr1, ptr2, 9813723, 562, outbyte_ptr_l);
    write(ptr1, ptr2, 9813723, 4036341403, outbyte_ptr_l);
    write(ptr1, ptr2, 9813723, 3628800, outbyte_ptr_l);
    write(ptr1, ptr2, 1, 3628800, outbyte_ptr_l);
    write(ptr1, ptr2, 4068839099, 3628800, outbyte_ptr_l);
    write(ptr1, ptr2, 0, 3628800, outbyte_ptr_l);
    write(ptr1, ptr2, 0, 3628800, outbyte_ptr_l);
    write(ptr1, ptr2, 0, 3628800, outbyte_ptr_l);

    int delay = 30;
    while(delay){
        delay--;
    }
}
