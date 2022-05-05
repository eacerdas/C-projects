#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define BASE 0x4000
#define MEMORY_ADD 0x10000000
#define MAX 6144

static void write(uint32_t next_addr, uint32_t index, int addr)
{
    *((uint32_t *)addr) = next_addr;
    addr = addr + 0x4;
    *((uint32_t *)addr) = index;
}

static uint32_t read(uint32_t addr)
{
    return *((volatile uint32_t *)addr);
}

void delay()
{
    int delay = 50;
    while (delay)
        delay--;
}

void main()
{
    uint32_t address = BASE;
    uint32_t *outbyte = (uint32_t *)MEMORY_ADD;
    uint32_t address_towrite = address + 0x8;
    uint32_t address_toread = address + 0x4;
    uint32_t data;
    uint32_t odd0 = 0, odd1 = 0, odd2 = 0, odd3 = 0, odd4 = 0;
    uint32_t ready0 = 0, ready1 = 0, ready2 = 0, ready3 = 0, ready4 = 0;

    uint32_t cnt = 0;

    int validator = 1;
    *outbyte = 0x0000;

    while (validator)
    {
        for (int i = 0; i < 6144; i++)
        {
            write(address_towrite, i, address);
            address = address_towrite;
            address_towrite = address + 0x8;
        }

        address = BASE;
        *outbyte = 1;
        delay();
        delay();
        delay();
        delay();

        for (int i = 0; i < MAX; i++)
        {
            data = read(address + 0x4);

            if (data % 2)
            {
                odd0 = odd1;
                odd1 = odd2;
                odd2 = odd3;
                odd3 = odd4;
                odd4 = data;
            }

            address = read(address);
        }

        *outbyte = odd0;
        delay();
        *outbyte = odd1;
        delay();
        *outbyte = odd2;
        delay();
        *outbyte = odd3;
        delay();
        *outbyte = odd4;
        delay();
        delay();

        validator = 0;
    }
}