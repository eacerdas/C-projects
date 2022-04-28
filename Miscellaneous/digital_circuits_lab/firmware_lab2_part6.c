#include <stdint.h>

#define LED_REGISTERS_MEMORY_ADD 0 x10000000
#define DIR_REG1 0x0FFFFFF0
#define DIR_REG2 0x0FFFFFF4
#define DIR_SAVE_LB 0x0FFFFFF8
#define DIR_SAVE_MB 0x0FFFFFFC

static void putuint (uint32_t i) {
*(( volatile uint32_t *) LED_REGISTERS_MEMORY_ADD) = i;
}

static void putuintREG1 (uint32_t i) {
*((volatile uint32_t *) DIR_REG1) = i;
}

static void putuintREG2 ( uint32_t i ) {
*((volatile uint32_t *) DIR_REG2) = i;
}

static void save_LB (uint32_t S0) {
S0 = *((volatile uint32_t *) DIR_SAVE_LB);
}

static void save_MB (uint32_t S1) {
S1 = *((volatile uint32_t *) DIR_SAVE_MB) ;
}

int manejo_bits (uint32_t u , uint32_t v){

int counter = 0;

for (int i = 0; i <32; i ++){

if (1 << i & u)
counter +=1;
if (1 << i & v)
counter += 1;
}

return counter;
}

void main () {

uint32_t r0 , r1 , r2 , r3 , r4 , r5 , r6 , r7 , r8 , r9;

uint32_t r10 , r11 , r12 , r13 , r14 , r15 , r16 , r17 , r18 , r19 ,r20 , r21;

putuintREG1 (25);
putuintREG2 (7);

save_LB (r0);
save_MB (r1) ;
putuint (manejo_bits (r0 , r1));

putuintREG1 (635) ;
save_LB (r2) ;
save_MB (r3) ;
putuint (manejo_bits (r2 , r3));

putuintREG2 (1023);
save_LB (r4);
save_MB (r5);
putuint (manejo_bits (r4 , r5));

putuintREG1 (2157297371);
save_LB (r6);
save_MB (r7);
putuint (manejo_bits (r6 , r7));

putuintREG2 (662);
save_LB (r8);
save_MB (r9);
putuint (manejo_bits (r8 , r9));

putuintREG1 (9813723);
save_LB (r10);
save_MB (r11);
putuint (manejo_bits (r10, r11));

uint32_t r = 6036761403;
putuintREG2 (r);
save_LB (r12);
save_MB (r13);
putuint (manejo_bits (r12, r13));

putuintREG2 (3628800);
save_LB (r14);
save_MB (r15);
putuint (manejo_bits (r14, r15));

putuintREG1 (1);
save_LB (r16);
save_MB (r17);
putuint (manejo_bits (r16 , r17));

putuintREG1 (4068839099);
save_LB (r18);
save_MB (r19);
putuint (manejo_bits (r18, r19));

putuintREG1 (23);
save_LB (r20);
save_MB (r21);
putuint (manejo_bits (r20, r21));

}
