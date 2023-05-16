#ifndef MAIN_TASKS
#define MAIN_TASKS

#include "pin_init.h"
#include <stdint.h>
#include "TM4C123GH6PM.h"
#include "FreeRTOS.h"
#include "semphr.h"

#define passenger_side 0
#define driver_side 1

void TASK_SampleInput(void *vptr);
void Task_WND_LS(void *pvParameters);
void Task_JAM_LS(void *pvParameters);
void Task_LOCK_BTN(void *pvParameters);
void Task_PASS_PB(void *pvParameters);
void Task_DRVR_PB(void *pvParameters);
void Task_DRVR_AUTO(void *pvParameters);



#endif 
