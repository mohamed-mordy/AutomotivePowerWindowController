#include "SamplingInput.h"
#include "FreeRTOS.h"
#include "semphr.h"

/* +Manual open/close function
When the power window switch is pushed or pulled
continuously, the window opens or closes until the switch
is released.*/


void TASK_SampleInput(void *vptr) {
    TickType_t xLastWakeTime;
    const TickType_t xFrequency = 10;

    /* Periodicity 1 ms */
    (void) vptr;

    xLastWakeTime = xTaskGetTickCount();
    while ( 1 ) {
        // INPUT SAMPLING
        //
        if (InputIndexer > 9) {
            InputIndexer = 0;
        }
        // InputIndexer %= 10;        
        
        // acquire mutex
        xSemaphoreTake(InputDataMutex, portMAX_DELAY);
        
        PassengerUP[InputIndexer]   = (PORT_PASS_SIDE_PB & (1 << PB_P_PASS_UP)) >> PB_P_PASS_UP;
        PassengerDown[InputIndexer] = (PORT_PASS_SIDE_PB & (1 << PB_P_PASS_DOWN)) >> PB_P_PASS_DOWN;

        DriverUP[InputIndexer] = (PORT_DRIVER_SIDE_PB & (1 << PB_P_DRV_UP)) >> PB_P_DRV_UP;
        DriverDown[InputIndexer] = (PORT_DRIVER_SIDE_PB & ( 1 << PB_P_DRV_DOWN)) >> PB_P_DRV_DOWN;

        DriverLock[InputIndexer] = (PORT_DRIVER_SWITECES & (1 << SW_D_LOCK)) >> SW_D_LOCK;

        OneTouchAllUp[InputIndexer] = (PORT_DRIVER_SWITECES & (1 << PB_D_AUTO_UP)) >> PB_D_AUTO_UP;
        OneTouchAllDown[InputIndexer] = (PORT_DRIVER_SWITECES &(1 << PB_D_AUTO_DOWN)) >> PB_D_AUTO_DOWN;

        JamProtection[InputIndexer] = (PORT_PASS_SIDE_PB & (1 << PB_D_JAM_PROTECT))  >> PB_D_JAM_PROTECT;
        LimitSwitchUp[InputIndexer] = (PORT_LIMIT_SWITCHES & ( 1 << LS_P_WIND_UP)) >>  LS_P_WIND_UP;
        LimitSwitchDown[InputIndexer] = (PORT_LIMIT_SWITCHES & (1 << LS_P_WIND_DOWN)) >> LS_P_WIND_DOWN;
        
        InputIndexer++;
        
        // release mutex
				//there is no DelayTime with the MUTEX
         xSemaphoreGive(InputDataMutex);
        
        vTaskDelayUntil( &xLastWakeTime, xFrequency );
    }
}

void manual_OC_func(uint8_t side){
	/*driver's side*/
	if(side == driver_side){

					/*up PB*/
		// check if the up PB is clicked
        while(PORT_PASS_SIDE_PB & PB_P_PASS_DOWN){
            // check if up LS is not detected
            while(PORT_LIMIT_SWITCHES & ~LS_P_WIND_UP){
                // move the motor in upward direction IN1=1 IN2=0
                PORT_MOTOR_WND |= MOTOR_IN1;
                PORT_MOTOR_WND &= ~MOTOR_IN2;
            }

        //turning motor off by PF0=0 & PF1=0
            PORT_MOTOR_WND &= (0xFFFFFFFC);

	}//end of up PB driver's side

						/*down PB*/
	//check if the down PB is clicked
	while(PORT_PASS_SIDE_PB & PB_P_PASS_DOWN){
		//check if up LS is not detected
		while(PORT_LIMIT_SWITCHES & ~LS_P_WIND_DOWN){
			//move the motor in upward direction IN1=1 IN2=0
			PORT_MOTOR_WND &= MOTOR_IN1;
			PORT_MOTOR_WND |= ~MOTOR_IN2;
		}

        //turning motor off by PF0=0 & PF1=0
        GPIO_PORTF_DATA_R &= (0xFFFFFFFC);
	}




	//turning motor off by PF0=0 & PF1=0
  GPIO_PORTF_DATA_R &= (0xFFFFFFFC);


	}//end of driver's side

/*passenger's side*/
	else if (side == passenger_side){
							/*up PB*/
		//check if the up PB is clicked
	while(GPIO_PORTD_DATA_R & PB_P_PASS_UP){
		//check if up LS is not detected
		while(GPIO_PORTD_DATA_R & ~LS_P_WIND_UP){
			//move the motor in upward direction IN1=1 IN2=0
			GPIO_PORTF_DATA_R |= MOTOR_IN1;
			GPIO_PORTF_DATA_R &= ~MOTOR_IN2;
		}

	//turning motor off by PF0=0 & PF1=0
  GPIO_PORTF_DATA_R &= (0xFFFFFFFC);

	}//end of up PB driver's side

						/*down PB*/
	//check if the down PB is clicked
	while(GPIO_PORTD_DATA_R & PB_P_PASS_DOWN){
			//check if up LS is not detected
		while(GPIO_PORTD_DATA_R & ~LS_P_WIND_DOWN){
			//move the motor in upward direction IN1=1 IN2=0
			GPIO_PORTF_DATA_R &= MOTOR_IN1;
			GPIO_PORTF_DATA_R |= ~MOTOR_IN2;
		}
        //turning motor off by PF0=0 & PF1=0
        GPIO_PORTF_DATA_R &= (0xFFFFFFFC);
	}
	//turning motor off by PF0=0 & PF1=0
    GPIO_PORTF_DATA_R &= (0xFFFFFFFC);
	}
}




