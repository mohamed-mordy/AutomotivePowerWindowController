#include "MovReq_Execution.h"
#include "tm4c123gh6pm.h"
void TASK_MovReqExecution(void *vptr)
{

    for(;;) {
      xQueueReceive( MovReqQueue, &( MovReqExecution_movingRequest ), 10 / portTICK_RATE_MS );
			
			//check if the motor signal is ON
      if (MovReqExecution_movingRequest.mode == ON) {
				//check if the motor direcction should be up or down
				//if the direction of the model should be upwards
				if (MovReqExecution_movingRequest.direction == Up) {
					GPIOPinWrite(PORT_MOTOR_WND, MOTOR_IN1, MOTOR_IN1);
					GPIOPinWrite(PORT_MOTOR_WND, MOTOR_IN2, 0);
					vTaskDelay(MovReqExecution_movingRequest.time);

        } 
				//if the direction of the motor should be downwards
				else if (MovReqExecution_movingRequest.direction == Down) {
					GPIOPinWrite(PORT_MOTOR_WND, MOTOR_IN2, MOTOR_IN2);
					GPIOPinWrite(PORT_MOTOR_WND, MOTOR_IN1, 0);
					vTaskDelay(MovReqExecution_movingRequest.time); 
         } 
				 else if (MovReqExecution_movingRequest.direction == Undef){
					GPIOPinWrite(PORT_MOTOR_WND, MOTOR_IN2, 0);
					GPIOPinWrite(PORT_MOTOR_WND, MOTOR_IN1, 0);
					vTaskDelay(MovReqExecution_movingRequest.time); 
         }
         
      } 
			else if (MovReqExecution_movingRequest.mode == OFF) {
					GPIOPinWrite(PORT_MOTOR_WND, MOTOR_IN2, 0);
					GPIOPinWrite(PORT_MOTOR_WND, MOTOR_IN1, 0);
					vTaskDelay(MovReqExecution_movingRequest.time); 

			}   
    }


}
