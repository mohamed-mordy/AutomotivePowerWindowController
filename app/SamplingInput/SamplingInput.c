#include "SamplingInput.h"
#include "FreeRTOS.h"
#include "semphr.h"

/* +Manual open/close function
When the power window switch is pushed or pulled
continuously, the window opens or closes until the switch
is released.*/
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

extern SemaphoreHandle_t InputDataMutex;

void TASK_SampleInput(void *vptr) {
    TickType_t xLastWakeTime;
    const TickType_t xFrequency = 10;

    /* Periodicity 1 ms */
    (void) vptr;

    xLastWakeTime = xTaskGetTickCount();
    while ( 1 ) {
        // INPUT SAMPLING
        //
        if (InputINdexer > 9) {
            InputIndexer = 0;
        }
        // InputIndexer %= 10;        
        
        // acquire mutex
        xSemaphoreTake(InputDataMutex, portMAX_DELAY);
        
        PassengerUP[InputIndexer]   = (PORT_PASS_SIDE_PB & (1 << PB_P_PASS_UP)) >> PB_P_PASS_UP;
        PassengerDown[InputIndexer] = (PORT_PASS_SIDE_PB & (1 << PB_P_PASS_DOWN)) >> PB_P_PASS_DOWN;

        DriverUP[InputIndexer] = (PORT_DRIVER_SIDE_PB & (1 << PB_P_PASS_UP)) >> PB_P_PASS_UP;
        DriverDown[InputIndexer] = (PORT_DRIVER_SIDE_PB & ( 1 << PB_P_PASS_DOWN)) >> PB_P_PASS_DOWN;

        DriverLock[InputIndexer] = (PORT_DRIVER_SWITECES & (1 << SW_D_LOCK)) >> SW_D_LOCK;

        OneTouchAllUp[InputIndexer] = (PORT_DRIVER_SWITECES & (1 << PB_D_AUTO_UP)) >> PB_D_AUTO_UP;
        OneTouchAllDown[InputIndexer] = (PORT_DRIVER_SWITECES &(1 << PB_D_AUTO_DOWN)) >> PB_D_AUTO_DOWN;

        JamProtection[InputIndexer] = (PORT_PASS_SIDE_PB & (1 << PB_D_JAM_PROTECT))  >> PB_D_JAM_PROTECT;
        LimitSwitchUp[InputIndexer] = (PORT_LIMIT_SWITCHES & ( 1 << LS_P_WIND_UP)) >>  LS_P_WIND_UP;
        LimitSwitchDown[InputIndexer] = (PORT_LIMIT_SWITCHES & (1 << LS_P_WIND_DOWN)) >> LS_P_WIND_DOWN;
        
        InputIndexer++;
        
        // release mutex
         xSemaphoreGive(InputDataMutex, portMAX_DELAY );
        
        vTaskDelayUntil( &xLastWakeTime, xFrequency );
    }
}

void manual_OC_func(uint8_t side){
	/*driver's side*/
	if(side == driver_side){

					/*up PB*/
		// check if the up PB is clicked
        while(GPIO_PORTC_DATA_R & PB_D_PASS_UP){
            // check if up LS is not detected
            while(GPIO_PORTD_DATA_R & ~LS_P_WIND_UP){
                // move the motor in upward direction IN1=1 IN2=0
                GPIO_PORTF_DATA_R |= MOTOR_IN1;
                GPIO_PORTF_DATA_R &= ~MOTOR_IN2;
            }

        //turning motor off by PF0=0 & PF1=0
            GPIO_PORTF_DATA_R &= (0xFFFFFFFC);

	}//end of up PB driver's side

						/*down PB*/
	//check if the down PB is clicked
	while(GPIO_PORTC_DATA_R & PB_D_PASS_DOWN){
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




