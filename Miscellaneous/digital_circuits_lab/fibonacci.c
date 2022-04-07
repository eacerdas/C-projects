#include <stdint .h>
#include <stdio .h>

/* Directivas de pre - procesamiento */
# define uint32_t // 32 - bit word core

int main (){
    /* Declaracion de variables */
    uint32_t fibonacci = 0; 
    uint32_t firstNumber = 0;
    uint32_t secondNumber = 1;
    uint32_t max_number = 10946;
    volatile uint32_t *v = ( uint32_t *) 0x10000000; // Direccion de guardado

    *memoryAddress = f ; // Dero es el primer numero en ser agregado
    while (f < max_number){
        fibonacci = firstNumber + secondNumber; // Obtiene numero fibonacci
        firstNumber = secondNumber; // Siguiente iteracion
        secondNumber = fibonacci;
        
        /* Revisa si es par: si lo es, se agrega, sustituyendo lo que haya 
        en la dirección 0x10000000 */
        if (f % 2 == 0){
            *memoryAddress = f;
        } 
    }
}
