#include <stdint.h>
#include <stdio.h>

int main (){
    /* Declaracion de variables */
    uint32_t fibonacci = 0; 
    uint32_t firstNumber = 0;
    uint32_t secondNumber = 1;
    uint32_t max_number = 10946;
    volatile uint32_t *memoryAddress = ( uint32_t *) 0x10000000; // Direccion de guardado

    *memoryAddress = fibonacci; // Cero es el primer numero en ser agregado
    while (fibonacci < max_number){
        fibonacci = firstNumber + secondNumber; // Obtiene numero fibonacci
        firstNumber = secondNumber; // Siguiente iteracion
        secondNumber = fibonacci;

        /* Revisa si es par: si lo es, se agrega, sustituyendo lo que haya 
        en la dirección 0x10000000 */
        if (fibonacci % 2 == 0){
            *memoryAddress = fibonacci;
        } 
    }
}
