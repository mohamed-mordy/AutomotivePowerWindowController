#ifndef SAMPLING_INPUT_H
#define SAMPLING_INPUT_H

#include "pin_init.h"
#include <stdint.h>
#include "TM4C123GH6PM.h"
#include "semphr.h"
#define passenger_side 0
#define driver_side 1


#define INPUT_ARRAYS_SIZE  10U

uint8_t InputIndexer = 0;
uint8_t PassengerUP[INPUT_ARRAYS_SIZE];
uint8_t PassengerDown[INPUT_ARRAYS_SIZE];

uint8_t DriverUP[INPUT_ARRAYS_SIZE];
uint8_t DriverDown[INPUT_ARRAYS_SIZE];
uint8_t DriverLock[INPUT_ARRAYS_SIZE];

uint8_t OneTouchAllUp[INPUT_ARRAYS_SIZE];
uint8_t OneTouchAllDown[INPUT_ARRAYS_SIZE];

uint8_t JamProtection[INPUT_ARRAYS_SIZE];
uint8_t LimitSwitchUp[INPUT_ARRAYS_SIZE];
uint8_t LimitSwitchDown[INPUT_ARRAYS_SIZE];

void TASK_SampleInput(void *vptr);

extern SemaphoreHandle_t InputDataMutex;

/* +Manual open/close function
When the power window switch is pushed or pulled
continuously, the window opens or closes until the switch
is released.*/
void manual_OC_func(uint8_t side);




#endif 