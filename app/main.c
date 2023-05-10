#include <stdbool.h>
#include <stdint.h>
#include <gpio.h>
#include "FreeRTOS.h"
#include "SamplingInput.h"

uint32_t SystemCoreClock = 16000000u;
void SystemInit(void);
void SystemInit(void)
{
}


SemaphoreHandle_t InputDataMutex;
QueueHandle_t     MovReqQueue;

int main()
{
    volatile int FOREVER_RUN = 1;
    InputDataMutex = xSemaphoreCreateMutex( void )
    MovReqQueue    = xQueueCreate( 10, sizeof( MovReq ) );
    
    while (FOREVER_RUsN) {
    
    }

    return 0;    
}
