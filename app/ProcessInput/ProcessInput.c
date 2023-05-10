#include "FreeRTOS.h"
#include "semphr.h"


extern SemaphoreHandle_t InputDataMutex;

uint8_t   ProcessSinleArray(uint8_t *array, uint8_t length)
{
    for (uint8_t i = 0; i < length; i++) {
        if (array[i] != 1) {
            return 0;
        }
    }
    return 1;
}

uint8_t PassengerUP_State;
uint8_t PassengerDown_State;

uint8_t DriverUP_State;
uint8_t DriverDown_State;
uint8_t DriverLock_State;

uint8_t OneTouchAllUp_State;
uint8_t OneTouchAllDown_State;

uint8_t JamProtection_State;
uint8_t LimitSwitchUp_State;
uint8_t LimitSwitchDown_State;


typedef uint8_t Speed_t;

typedef enum {
    Up = 1;
    Down = 2;
    Undef = 3;
} Direction_t;

typedef uint32_t Time_t;

typedef enum {
    OFF;
    ON;
} Mode_t;

typedef struct {
    Direction_t direction;
    Speed_t     speed;
    Time_t      time;   // mseconds 
    Mode_t      mode;
} MovReq;


static MovReq ProcessInput_movingRequest;

void TASK_ProcessInput(void *vptr)
{
    TickType_t xLastWakeTime;
    const TickType_t xFrequency = 10;

    /* Periodicity 1 ms */
    (void) vptr;

    xLastWakeTime = xTaskGetTickCount();

    while (1) {

        xSemaphoreTake(InputDataMutex, portMAX_DELAY);

        // Read input arrays and update flags for every switch
        PassengerUP_State  = ProcessSinleArray(PassengerUP, 10);
        PassengerDown_State= ProcessSinleArray(PassengerDown, 10);

        DriverUP_State= ProcessSinleArray(DriverUP, 10);
        DriverDown_State= ProcessSinleArray(DriverDown, 10);
        DriverLock_State= ProcessSinleArray(DriverLock, 10);

        if ( ProcessSinleArray(OneTouchAllUp, 10) ) {
            OneTouchAllUp_State = 1;
        }
        
        if (ProcessSinleArray(OneTouchAllDown, 10)) {
            OneTouchAllDown_State = 1;
        }
            
        JamProtection_State= ProcessSinleArray(JamProtection, 10);
        LimitSwitchUp_State= ProcessSinleArray(LimitSwitchUp, 10);
        LimitSwitchDown_State= ProcessSinleArray(LimitSwitchDown, 10);

        xSemaphoreGive(InputDataMutex, portMAX_DELAY );

        // Logic for sending requests based on current state of switches

        if (JamProtection_State == 1) {
            OneTouchAllUp_State = 0;
            OneTouchAllDown_State = 0;
            
            // Immediate Stop
            // Move down for 500 msec
            ProcessInput_movingRequest.mode = OFF;
            ProcessInput_movingRequest.time = 20;
            if( xQueueSendToBack( MovReqQueue, ( void * ) & ProcessInput_movingRequest, portMAX_DELAY) != pdPASS ) {
                /* Failed to post the message. */
            }
            ProcessInput_movingRequest.mode = ON;
            ProcessInput_movingRequest.direction = Down;
            ProcessInput_movingRequest.time = 500;
        } else if (LimitSwitchUp_State == 1 || LimitSwitchDown_State == 1) {
            OneTouchAllUp_State = 0;
            OneTouchAllDown_State = 0;
          
            // Immediate Stop
            ProcessInput_movingRequest.mode = OFF;
            ProcessInput_movingRequest.direction = Undef;
            ProcessInput_movingRequest.time = 0;
            // Do not respond to Move Up or Down requests
        } else if (OneTouchAllUp_State == 1) {
            // Move All Windows Up
            ProcessInput_movingRequest.mode = ON;
            ProcessInput_movingRequest.direction = Up;
            ProcessInput_movingRequest.time = 0;
        } else if (OneTouchAllDown_State == 1) {
            // Move All Windows Down
            ProcessInput_movingRequest.mode = ON;
            ProcessInput_movingRequest.direction = Down;
            ProcessInput_movingRequest.time = 0;
        } else if (DriverUP_State == 1 ) {
            // Move Up
            ProcessInput_movingRequest.mode = ON;
            ProcessInput_movingRequest.direction = Up;
            ProcessInput_movingRequest.time = 0;
        } else if (DriverDown_State == 1) {
            // Move Down
            ProcessInput_movingRequest.mode = ON;
            ProcessInput_movingRequest.direction = Down;
            ProcessInput_movingRequest.time = 0;
            
        } else if (PassengerUP_State == 1 && DriverLock_State != 1) {
            // Move Up
            ProcessInput_movingRequest.mode = ON;
            ProcessInput_movingRequest.direction = Up;
            ProcessInput_movingRequest.time = 0;
        } else if (PassengerDown_State == 1 && DriverLock_State != 1) {
            // Move Down
            ProcessInput_movingRequest.mode = ON;
            ProcessInput_movingRequest.direction = Down;
            ProcessInput_movingRequest.time = 0;
        } else {
            ProcessInput_movingRequest.mode = OFF;
            ProcessInput_movingRequest.direction = Undef;
            ProcessInput_movingRequest.time = 0;
        }

        // send action request
        if( xQueueSendToBack( MovReqQueue, ( void * ) &ProcessInput_movingRequest, portMAX_DELAY) != pdPASS ) {
            /* Failed to post the message. */
        }

        // delay
        vTaskDelayUntil( &xLastWakeTime, xFrequency );
    }
}
