#include "FreeRTOS.h"
#include "MovReqExecution.h"


static MovReq MovReqExecution_movingRequest;
/*
typedef struct {
    Direction_t direction;  // 2 OUTPUT pins
    Speed_t     speed;
    Time_t      time;   // mseconds 
    Mode_t      mode;
} MovReq;
Motor Driver
    Input :
        PWM  == Constant value
        DIR  == UP / Down
        ENABLE == Mode ( ON, OFF)
        
        PORT_Motor_Driver_Control
#define MOTOR_Driver_PWM   4
#define MOTOR_Driver_EN    3
#define MOTOR_Driver_DIR   2
*/


void TASK_MovReqExecution(void *vptr)
{
    TickType_t xLastWakeTime;
    const TickType_t xFrequency = 10;

    (void) vptr;

    xLastWakeTime = xTaskGetTickCount();

    while (1) {

      if( xQueueReceive( MovReqQueue, &( MovReqExecution_movingRequest ), portMAX_DELAY ) != pdPASS ) {
         /* Failed to get Request Message. */
      }

      
      if (MovReqExecution_movingRequest.mode == ON) {
         if (MovReqExecution_movingRequest.direction == UP) {
         
         } else if (MovReqExecution_movingRequest.direction == Down) {
         
         } else {
         
         }
         
         if (MovReqExecution_movingRequest.time > 0 ) {
                vTaskDelay(MovReqExecution_movingRequest.time);
         }
         
      } else if (MovReqExecution_movingRequest.mode == OFF) {
      
      } else {
      
      }
      
        // delay
        vTaskDelayUntil( &xLastWakeTime, xFrequency );
    }


}
