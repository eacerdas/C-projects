#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define A 0x0FFFFFE0         //NUMERO AL CUAL SE LE QUIRE CALCULAR EL FACTORIAL       
#define RESULT 0x0FFFFFE8    //RESULTADO
#define CONTROL 0x0FFFFFE4   //CONTROL                    
#define STATUS 0x0FFFFFEC    //STATUS
#define RESULT_FINAL 0x10000000   //RESULTADO_FINAL

/*Guarda el resultado en memoria*/
static void putuint(uint32_t i, int DIR) {
	*((volatile uint32_t *)DIR) = i;
}

/*Carga el resultado de memoria*/
static uint32_t getuint(int DIR) {
	return *((volatile uint32_t *)DIR);
}

static void factorial(uint32_t n){
    putuint(0, STATUS);                              // Señal de status en 0
    if(n == 0){
        putuint(1, A);
    }
    else{
        putuint(n, A);                          // almacena el numero en 0x0FFFFFE0 
        putuint(1, CONTROL);                          // Cambia Control
        while(1){  
            if(getuint(STATUS) == 1) {               // Termina factorial
                putuint(0, CONTROL);                  // Cambia Control
                putuint(getuint(RESULT), RESULT_FINAL); //Guarda el resultado en 0X10000000
                return;
            }
        }    
    }
}

void main(){
    factorial(5);
    factorial(7);
    factorial(10);
    factorial(12);
}
