
#include "Process_Input.h"
#include "MovReq_Execution.h"
#include <string.h>
SemaphoreHandle_t MotorMutex = NULL;
uint8_t PassengerUP_State = 0;
uint8_t PassengerDown_State = 0;
uint8_t DriverUP_State = 0;
uint8_t DriverDown_State = 0;
uint8_t DriverLock_State = 0;

uint8_t OneTouchAllUp_State = 0;
uint8_t OneTouchAllDown_State = 0;

uint8_t JamProtection_State = 0;
uint8_t LimitSwitchUp_State = 0;
uint8_t LimitSwitchDown_State = 0;
QueueHandle_t     MovReqQueue;
QueueHandle_t     StateQueue;

uint8_t flag_AUTOUP = 0;
uint8_t flag_AUTODWN = 0;
void TASK_ProcessInput(void *pvParameters)
{
		uint8_t Received_State;
		portBASE_TYPE xStatus;

    for(;;) {

        //read the state queue to check the pin states
				xStatus = xQueueReceive(StateQueue, &Received_State, 100/ portTICK_RATE_MS);
				//if get reading from LS UP
				if (Received_State == 1)
				{
					LimitSwitchUp_State = 1;
					OneTouchAllUp_State = 0;	
					Received_State = 0;
				}
				//if get reading from LS Down
				if (Received_State == 2)
				{
					LimitSwitchDown_State = 1;
					OneTouchAllDown_State = 0;						
					Received_State = 0;
					
				}
					//if get reading from JAM LS
				if (Received_State == 3)
				{
					JamProtection_State = 1;
					OneTouchAllUp_State = 0;
					OneTouchAllDown_State = 0;	
					Received_State = 0;
				}

				//if get reading from LOCK PB
				if (Received_State == 4)
				{
					DriverLock_State = 1;
					Received_State = 0;
				}
				if (Received_State==11)
				{
					DriverLock_State = 0;
				}
				
				//if get reading from Passenger UP PB
				if (Received_State == 5)
				{
					PassengerUP_State = 1;
					OneTouchAllUp_State = 0;
					OneTouchAllDown_State = 0;	
					Received_State = 0;
				}

					//if get reading from Passenger Down PB
				if (Received_State == 6)
				{
					PassengerDown_State = 1;
					OneTouchAllUp_State = 0;
					OneTouchAllDown_State = 0;		
					Received_State = 0;
				}
		
				//if get reading from Driver UP PB
				if (Received_State ==  7)
				{
					DriverUP_State = 1;
					OneTouchAllUp_State = 0;
					OneTouchAllDown_State = 0;	
					Received_State = 0;
				}
					
					//if get reading from Driver Down PB
				if (Received_State == 8)
				{
					DriverDown_State = 1;
					OneTouchAllUp_State = 0;
					OneTouchAllDown_State = 0;
					Received_State = 0;
				}
					
					//if get reading from Driver AUTO UP PB
				if (Received_State == 9)
				{
					if (OneTouchAllDown_State == 0)
						OneTouchAllUp_State = 1;
					else 
						OneTouchAllUp_State = 0;
					OneTouchAllDown_State = 0;
					Received_State = 0;
				}
				
				//if get reading from Driver AUTO Down PB
				if (Received_State == 10)
				{
					if (OneTouchAllUp_State == 0)
						OneTouchAllDown_State = 1;
					else 
						OneTouchAllDown_State = 0;
					OneTouchAllUp_State = 0;
					Received_State = 0;
					
				}
					
									
        // Logic for sending requests based on current state of switches
				if (DriverLock_State == 1)
				{
					PassengerDown_State = 0;
					PassengerUP_State = 0;
				}
				
        if (JamProtection_State == 1) {
             PassengerUP_State = 0;
						 PassengerDown_State = 0;

						 DriverUP_State = 0;
						 DriverDown_State = 0;

						 OneTouchAllUp_State = 0;
						 OneTouchAllDown_State = 0;

						 
						 LimitSwitchUp_State = 0;
						 LimitSwitchDown_State = 0;
            // Immediate Stop for 20 msec
            // Move down for 500 msec
            ProcessInput_movingRequest.mode = OFF;
            ProcessInput_movingRequest.time = 20 / portTICK_RATE_MS; //be in this state for 20 msec
            xQueueSendToBack( MovReqQueue, ( void * ) & ProcessInput_movingRequest, 0);						
						ProcessInput_movingRequest.mode = ON;
						ProcessInput_movingRequest.direction = Down;
						ProcessInput_movingRequest.time = 500 / portTICK_RATE_MS; //move down for 0.5 sec
						
						xQueueSendToBack( MovReqQueue, ( void * ) & ProcessInput_movingRequest, 0);						
						ProcessInput_movingRequest.mode = OFF;
            ProcessInput_movingRequest.direction = Undef;
            ProcessInput_movingRequest.time = 0;
					} 
						
					else if (LimitSwitchUp_State == 1) {
            OneTouchAllUp_State = 0;
            DriverUP_State = 0;
						PassengerUP_State = 0;
            // Do not respond to Move Up or Down requests
						ProcessInput_movingRequest.mode = OFF;
            ProcessInput_movingRequest.direction = Undef;
            ProcessInput_movingRequest.time = 0;
					}
					else if (LimitSwitchDown_State == 1)
					{
						OneTouchAllDown_State = 0;
            DriverDown_State = 0;
						PassengerDown_State = 0;
						//OneTouchAllDown_State = 0;
						ProcessInput_movingRequest.mode = OFF;
            ProcessInput_movingRequest.direction = Undef;
            ProcessInput_movingRequest.time = 0;
					}
					
					else if (OneTouchAllUp_State == 1) {
            OneTouchAllDown_State = 0;
						DriverDown_State = 0;
						DriverUP_State = 1;
						PassengerDown_State = 0;
						PassengerUP_State = 0;
						// Move All Windows Up
						ProcessInput_movingRequest.mode = ON;
            ProcessInput_movingRequest.direction = Up;
            ProcessInput_movingRequest.time = 0;
					}	 
					else if (OneTouchAllDown_State == 1) {
						DriverUP_State = 0;
						PassengerDown_State = 0;
						PassengerUP_State = 0;
						DriverDown_State = 1;
						
            // Move All Windows Down
            ProcessInput_movingRequest.mode = ON;
            ProcessInput_movingRequest.direction = Down;
            ProcessInput_movingRequest.time = 0;
					} 
					else if (DriverUP_State == 1) {
						DriverDown_State = 0;
						PassengerUP_State = 0;
						PassengerDown_State = 0;
            // Move Up
            ProcessInput_movingRequest.mode = ON;
            ProcessInput_movingRequest.direction = Up;
            ProcessInput_movingRequest.time = 0;
					}
					else if (DriverDown_State == 1) {
            // Move Down

						PassengerUP_State = 0;
						PassengerDown_State = 0;
            ProcessInput_movingRequest.mode = ON;
            ProcessInput_movingRequest.direction = Down;
            ProcessInput_movingRequest.time = 0;
						
 					} 
					else if (PassengerUP_State == 1 && DriverLock_State != 1) {
						PassengerDown_State = 0;
						// Move Up
						ProcessInput_movingRequest.mode = ON;
            ProcessInput_movingRequest.direction = Up;
            ProcessInput_movingRequest.time = 0;						
						
					} 
					else if (PassengerDown_State == 1 && DriverLock_State != 1 ) {
            // Move Down
            ProcessInput_movingRequest.mode = ON;
            ProcessInput_movingRequest.direction = Down;
            ProcessInput_movingRequest.time = 0;
						
        } 
				else {
					ProcessInput_movingRequest.mode = OFF;
					ProcessInput_movingRequest.direction = Undef;
					ProcessInput_movingRequest.time = 0;

			}
			 PassengerUP_State = 0;
			 PassengerDown_State = 0;

				DriverUP_State = 0;
				DriverDown_State = 0;				 
				LimitSwitchUp_State = 0;
				LimitSwitchDown_State = 0;
				JamProtection_State = 0;
        // send action request 
				xQueueSendToBack( MovReqQueue, ( void * ) &ProcessInput_movingRequest, 0);
    }
}
