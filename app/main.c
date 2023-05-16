#include "MovReq_Execution.h"
#include "pin_init.h"
#include "Main_Tasks.h"
#include "Process_Input.h"
uint32_t SystemCoreClock = 16000000u;
void SystemInit(void);
void SystemInit(void)
{
}

#define LS_TASK_PRIORITY 1
#define JAM_TASK_PRIORITY 1
#define Lck_TASK_PRIORITY 1
#define PASSPB_TASK_PRIORITY 1
#define DRVPB_TASK_PRIORITY 1
#define DRVAUTOPB_TASK_PRIORITY 1
#define INPT_TASK_PRIORITY 2
#define MOV_TASK_PRIORITY 2
uint8_t flag_AUTOUP_1 = 0;
uint8_t flag_AUTODWN_1 = 0;

int main()
{
		setup_gpio_pins();
		StateQueue = xQueueCreate(20, sizeof(uint8_t));
		MovReqQueue = xQueueCreate(20, sizeof(MovReq));
		GPIOPinWrite(PORT_MOTOR_WND, MOTOR_IN1, 0);
		GPIOPinWrite(PORT_MOTOR_WND, MOTOR_IN2, 0);

		xTaskCreate(Task_WND_LS, "LimitSwitchesTask", 240, NULL, 1, NULL);
		xTaskCreate(Task_JAM_LS, "JamProtectionTask", 240, NULL, 1, NULL);
		xTaskCreate(Task_LOCK_BTN, "LockPBTask", 240, NULL, 1, NULL);
		xTaskCreate(Task_PASS_PB, "PassPB", 240, NULL, 1, NULL);
		xTaskCreate(Task_DRVR_PB, "DriverPB", 240, NULL, 1, NULL);
		xTaskCreate(Task_DRVR_AUTO, "DriverAUTOPB", 240, NULL, 1, NULL);
		xTaskCreate(TASK_ProcessInput, "ProcessingInputTask", 240, NULL, 2, NULL);
		xTaskCreate(TASK_MovReqExecution, "MovingTask", 240, NULL, 3, NULL);

		vTaskStartScheduler();
		for (;;);
}
