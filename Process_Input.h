#ifndef PROCESS_INPUT_H
#define PROCESS_INPUT_H
#include <string.h>
#include "FreeRTOS.h"
#include "semphr.h"
#include "Main_Tasks.h"
#include <stdint.h>

extern QueueHandle_t     MovReqQueue;
extern QueueHandle_t     StateQueue;

extern uint8_t PassengerUP_State;
extern uint8_t PassengerDown_State;

extern uint8_t DriverUP_State;
extern uint8_t DriverDown_State;
extern uint8_t DriverLock_State;

extern uint8_t OneTouchAllUp_State;
extern uint8_t OneTouchAllDown_State;

extern uint8_t JamProtection_State;
extern uint8_t LimitSwitchUp_State;
extern uint8_t LimitSwitchDown_State;


typedef uint8_t Speed_t;

typedef enum {
    Up = 1,
    Down = 2,
    Undef = 3
} Direction_t;

typedef uint32_t Time_t;

typedef enum {
    OFF = 0,
    ON = 1
} Mode_t;

typedef struct {
    Direction_t direction;
    Speed_t     speed;
    Time_t      time;   // mseconds 
    Mode_t      mode;
	  
} MovReq;

extern QueueHandle_t     StateQueue;
static MovReq ProcessInput_movingRequest;

void TASK_ProcessInput(void *vptr);

#endif