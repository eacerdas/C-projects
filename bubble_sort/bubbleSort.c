#include <stdio.h>
#include <time.h>
#include <math.h>

// Se crea una función que intercambie dos valores en un arreglo. 
void intercambiar(int *a, int *b)
{
	int t0;
	t0 = *a;
    *a = *b;
    *b = t0;
}
 
// Se crea la función que ejecute el algoritmo BubbleSort.
void bubbleSort(int array[], int n)

{  // Se inicializan variables necesarias.
   int i, j;
   
   // Se crean los ciclos necesarios para comparar el elemnto j
   // del array con el elemento j+1. En caso de que el elemento
   // j sea mayor que el j+1, se intercambian.
   for (i = 0; i < n-1; i++){
       
        for (j = 0; j < n-i-1; j++){
        
           if (array[j] < array[j+1]){
           
              intercambiar(&array[j], &array[j+1]);
          }
      }
  }
} 

// Se crea una función que imprime un arreglo.
void imprimir_arreglo(int array[], int tamano)
{
    int i;
    
    for (i=0; i < tamano; i++){
    
        printf("%d ", array[i]);
        
    }
    
    printf("\n");
}
 
/* ####################### Función principal ######################### */
int main()
{	
	// Se crea una semilla.
	srand(2);
	
	// Se ingresa e inicializa el tamaño del arreglo.
	int tamano = 15;
	
	// Se inicializa el arreglo con el tamaño.
    int array_a_ordenar[tamano];
    
    // Se inicializa un contador.
    int i;
    
    // Se le asignan valores aleatorios al arreglo creado.
    for (i = 0; i < tamano-1; i++){
    	
    	array_a_ordenar[i] = rand()%101;
    	
	}
	
	// Se imprime el arreglo desordenado.
    printf("Arreglo desordenado: \n");
    
    imprimir_arreglo(array_a_ordenar, tamano);
	
	// Se termina la cuenta de tiempo.
	clock_t tic = clock();
	
	// Se ordena el arreglo desordenado.
	bubbleSort(array_a_ordenar, tamano);
	
	// Se termina la cuenta de tiempo.
	clock_t toc = clock();
		
	// Se imprime el arreglo ordenado.
    printf("Arreglo ordenado: \n");
    
    imprimir_arreglo(array_a_ordenar, tamano);
    
    // Se calculan los ciclos necesarios para el ordenamiento.
	float ciclos = toc - tic;
	
	// Se calcula e imprime el tiempo de ordenamiento.
	float tiempo_de_ordenamiento = ciclos/CLOCKS_PER_SEC;

    printf("El ordenamiento duro %f s. \n", tiempo_de_ordenamiento);