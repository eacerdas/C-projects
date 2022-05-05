#include <stdint.h>

#define DIR1 0x1000000C
#define DIR2 0x10000010

int main()
{
	// Puntero a la dirección
	uint32_t *ptr_dir1 = (uint32_t *)DIR1;
	uint32_t *ptr_dir2 = (uint32_t *)DIR2;

	*ptr_dir1 = 120;
	*ptr_dir2 = 2;

	*ptr_dir1 = 19;
	*ptr_dir2 = 17;

	*ptr_dir1 = 3628800;
	*ptr_dir2 = 11;

	*ptr_dir1 = 39916800;
	*ptr_dir2 = 12;

	*ptr_dir2 = 3628800;
}
