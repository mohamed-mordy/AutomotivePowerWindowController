#include <FreeRTOS.h>
#include <semphr.h>
#include "tm4c123gh6pm.h"
#include <stdint.h>
#include "task.h"
#include "timers.h"
#include "Main_Tasks.h"
#include "Process_Input.h" 
#include "MovReq_Execution.h"
/*
- create for each input a task to handle the action of each class 
- set the priority for each task according to which switches have the higher priority
*/

//Create Task for LS_UP and LS_DWN
void Task_WND_LS(void *pvParameters)
{
	/*
	In this function, check the windows limit up and limit down switches
	- if there is any input from the limit up switch then the motor will be stopped in the up direction
		and get no data from the up PB from the driver and the passenger side -> suspend the tasks of UP PBs
	- if there is any input from the limit down switch then the motor will be stopped in the down direction 
		and get no data from the up PB from the driver and the passenger sides -> suspend the tasks of DWN PBs
 	*/
	uint8_t state;
	portBASE_TYPE xStatus;

	for (;;)
	{
		state = 0;
		if (GPIOPinRead(PORT_LIMIT_SWITCHES, LS_P_WIND_UP)) 
		{
			state = 1;
			xStatus = xQueueSendToBack( StateQueue, &state, 0 );			
    }
		else
		{
			state = 0;
		}
		if (GPIOPinRead(PORT_LIMIT_SWITCHES, LS_P_WIND_DOWN))
		{
			state = 2;
			xStatus = xQueueSendToBack( StateQueue, &state, 0 );			
    }
		else
		{
			state = 0;
		}
	}
}

//Create Task for JAM_LS
void Task_JAM_LS(void *pvParameters)
{
	/*
	In this function, check the jam protection limit switch
	- if the ls signal is detected and the motor is moving upwards, the motor will stop for 0.5ms 
	- The task of up pb will be suspended, then after 0.5ms the motor will move downwards until it check DWN_LS
	*/
	uint8_t state;
	portBASE_TYPE xStatus;	
	for (;;)
	{
		state = 0;
		if (GPIOPinRead(PORT_PASS_SIDE_PB, PB_D_JAM_PROTECT))
		{
			state = 3;
			xStatus = xQueueSendToBack( StateQueue, &state, 0 );	

    }
		else
		{
			state = 0;
		}
	}
}

//Create Task for LOCK_BTN
void Task_LOCK_BTN(void *pvParameters)
{
	/*
	In this function, check the lock on/off switch
	- if it is one, so the passenger side PBs cannot be read -> suspend the tasks of the passenger side PBs tasks
	*/
	uint8_t state;
	portBASE_TYPE xStatus;
	for (;;)
	{
		state = 0;
		if (GPIOPinRead(PORT_DRIVER_SWITCHES, SW_D_LOCK))
		{
			state = 4;
			xStatus = xQueueSendToBack( StateQueue, &state, 0 );			
    }
		else
		{
			state = 11;
			xStatus = xQueueSendToBack( StateQueue, &state, 0 );			

		}
	}
}

//Create Task for passenger PBs 
void Task_PASS_PB(void *pvParameters)
{
	/*
	In this function, checks for the PBs at the passenger side 
	- Check for the up PB and send the data to the main queue
	- Check for the down PB and send the data to the main queue
	*/
	uint8_t state;
	portBASE_TYPE xStatus;
	for (;;)
	{
		state = 0;
		if (GPIOPinRead(PORT_PASS_SIDE_PB , PB_P_PASS_UP))
		{
			state = 5;
			xStatus = xQueueSendToBack( StateQueue, &state, 0 );			
    }
		if (GPIOPinRead(PORT_PASS_SIDE_PB, PB_P_PASS_DOWN))
		{
			state = 6;
			xStatus = xQueueSendToBack( StateQueue, &state, 0 );			
    }
		state = 0;
	}
}

//Create Task for the Driver Side PBs
void Task_DRVR_PB(void *pvParameters)
{
	/*
	In this function, checks for the UP and DWN PBs at the driver side
	- Check for the up PB and send the data to the main queue
	- Check for the dwn PB and send the data to the main queue
	*/
	uint8_t state;
	portBASE_TYPE xStatus;
	for (;;)
	{	
		state = 0;
		if (GPIOPinRead(PORT_DRIVER_SIDE_PB, PB_P_DRV_UP))
		{
			state = 7;
			xStatus = xQueueSendToBack( StateQueue, &state, 0 );			
    }
		else
		{
			state = 0;
		}
		if (GPIOPinRead(PORT_DRIVER_SIDE_PB, PB_P_DRV_DOWN))
		{
			state = 8;
			xStatus = xQueueSendToBack( StateQueue, &state, 0 );			
    }
		else
		{
			state = 0;
		}
	}
}

//Create Task for the AUTO PBS
void Task_DRVR_AUTO(void *pvParameters)
{
	/*
	In this function, checks for the auto PBs
	- Check for the auto up PB, all the motors will move down -> send the data to the main queue
	- Check for the auto down PB, all the motors will move down -> send the data to the main queue
	*/
	uint8_t state;
	portBASE_TYPE xStatus;
	for (;;)
	{

		state = 0;
		if (GPIOPinRead(PORT_DRIVER_SWITCHES, PB_D_AUTO_UP))
		{
			state = 9;
			xStatus = xQueueSendToBack( StateQueue, &state, 0 );			
    }
		else
		{
			state = 0;
		}
		if (GPIOPinRead(PORT_DRIVER_SWITCHES, PB_D_AUTO_DOWN))
		{
			state = 10;
			xStatus = xQueueSendToBack( StateQueue, &state, 0 );			
    }
		else
		{
			state = 0;
		}	
	}
}