#include <stdio.h>
#include <stdint.h>

/* directivas de pre - procesamiento */
#define word32 uint32_t // 32 - bit word core

/*
Funcion factorial que calcula el factorial de un numero ,
entrada [ word32 n]: numero en 32 bits para calcular factorial
1salida [ word32 factorial ]: resultado en 32 bits del factorial de la entrada
*/
word32 get_factorial ( word32 n ){
  word32 factorial = 1;
  for ( word32 i = 1; i < n ; i ++) {
    factorial = i * factorial ; // calcula el factorial de forma iterativa
  }
  return factorial ; // retorna factorial de tipo word32
}

/* funcion main donde se calculan los factoriales utilizados */
int main ( void ){
  volatile word32 * wr_addr = ( word32 *) 0 x10000000 ; // direccion donde se escribe el resultado

  /* calcula los factoriales 5 ,7 ,10 ,12 */
  * wr_addr = get_factorial (5) ;
  * wr_addr = get_factorial (7) ;
  * wr_addr = get_factorial (10) ;
  * wr_addr = get_factorial (12) ;
}
