#include <stdint.h>

#define DIR1 0x10000004
#define DIR2 0x10000008

int main()
{
  // Puntero a la dirección
  uint32_t *ptr_dir1 = (uint32_t *)DIR1;
  uint32_t *ptr_dir2 = (uint32_t *)DIR2;

  *ptr_dir1 = 1;
  *ptr_dir2 = 2;

  *ptr_dir1 = 2;
  *ptr_dir2 = 3;

  *ptr_dir1 = 6;
  *ptr_dir2 = 4;
}
