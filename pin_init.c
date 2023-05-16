#include "pin_init.h"

void setup_gpio_pins(void)
{
    /* Enable the GPIO ports */
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOB);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOC);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOD);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOE);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

    /* Set up the GPIO pins for the limit switches */
    GPIOPinTypeGPIOInput(PORT_LIMIT_SWITCHES, LS_P_WIND_UP | LS_P_WIND_DOWN);
    GPIOPadConfigSet(PORT_LIMIT_SWITCHES, LS_P_WIND_UP | LS_P_WIND_DOWN, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);

    /* Set up the GPIO pins for the DC motor */
    GPIOPinTypeGPIOOutput(PORT_MOTOR_WND, MOTOR_IN1 | MOTOR_IN2  );

    /* Set up the GPIO pins for the push buttons */
		//Passenger Side Pushbuttons
    GPIOPinTypeGPIOInput(PORT_PASS_SIDE_PB, PB_P_PASS_UP | PB_P_PASS_DOWN);
    GPIOPadConfigSet(PORT_PASS_SIDE_PB, PB_P_PASS_UP | PB_P_PASS_DOWN, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);

		//Driver Side Pushbuttons
    GPIOPinTypeGPIOInput(PORT_DRIVER_SIDE_PB, PB_P_DRV_UP|PB_P_DRV_DOWN);
    GPIOPadConfigSet(PORT_DRIVER_SIDE_PB, PB_P_DRV_UP|PB_P_DRV_DOWN, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);
		
    /* Set up the GPIO pins for the ON/OFF switch */
    GPIOPinTypeGPIOInput(PORT_DRIVER_SWITCHES, SW_D_LOCK);
    GPIOPadConfigSet(PORT_DRIVER_SWITCHES, SW_D_LOCK, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);

    /* Set up the GPIO pins for the obstacle detection button */
    GPIOPinTypeGPIOInput(PORT_LIMIT_SWITCHES, PB_D_JAM_PROTECT);
    GPIOPadConfigSet(PORT_LIMIT_SWITCHES, PB_D_JAM_PROTECT, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);
		
		/*Set up the GPIO pins for the auto motion pushbuttons*/
		GPIOPinTypeGPIOInput(PORT_DRIVER_SWITCHES, PB_D_AUTO_UP | PB_D_AUTO_DOWN);
    GPIOPadConfigSet(PORT_DRIVER_SWITCHES, PB_D_AUTO_UP | PB_D_AUTO_DOWN, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);
}