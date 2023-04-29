#include <stdbool.h>
#include <stdint.h>
#include <gpio.h>


unsigned long SystemCoreClock = 16000000u;
void SystemInit(void);
void SystemInit(void)
{
}


int main()
{
    volatile int FOREVER_RUN = 1;
    
    while (FOREVER_RUN) {
    }

    return 0;    
}
