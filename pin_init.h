#ifndef PIN_INIT_H
#define PIN_INIT_H

#include "driverlib/gpio.h"
#include "driverlib/sysctl.h"
#include "hw_memmap.h"
#include "hw_types.h"
#define PORT_DRIVER_SIDE_PB             GPIO_PORTB_BASE
#define PORT_DRIVER_SWITCHES            GPIO_PORTC_BASE
#define PORT_PASS_SIDE_PB               GPIO_PORTA_BASE
#define PORT_LIMIT_SWITCHES             GPIO_PORTA_BASE
#define PORT_MOTOR_WND					        GPIO_PORTF_BASE

//Passenger Side
/*
The passenger side has two pushbuttons to represent the up and down of the window.
For the window side, there two limit switchs to detect the up and down limits.
For the window, there is a motor that represents the movement of the window. There are two IN pins for the forward 
and backward directions
There is also JAM Protection LS.
*/
//UP PB
//PORTA_2
#define PB_P_PASS_UP GPIO_PIN_2

//DOWN PB
//PORTA_3
#define PB_P_PASS_DOWN GPIO_PIN_3

//WND_LS 
//PORTA_4 and PORTA_5
#define LS_P_WIND_UP GPIO_PIN_4
#define LS_P_WIND_DOWN GPIO_PIN_5

//JAM_LS
//PORTA_6
#define PB_D_JAM_PROTECT GPIO_PIN_6

//MOTOR_UP
//PORTF_2
#define MOTOR_IN1 GPIO_PIN_2

//MOTOR_DOWN
//PORTF_3
#define MOTOR_IN2 GPIO_PIN_3

//Driver Side
/*
The driver has all the control. 
There are two pushbuttons to represent the control of the passenger window UP and DOWN.
There are One touch switch, which is represented in two PBs for UP and DOWN signal, where the driver can move the window 
up or down with one touch only.
There is a LOCK Switch which is represented by ON/OFF Switch. 
*/

//UP PB
//PORTB_3
#define PB_P_DRV_UP GPIO_PIN_3

//DOWN PB
//PORTB_4
#define PB_P_DRV_DOWN GPIO_PIN_4

//TOUCH UP PB
//PORTC_4
#define PB_D_AUTO_UP GPIO_PIN_4


//TOUCH DOWN PB
//PORTC_5
#define PB_D_AUTO_DOWN GPIO_PIN_5
//LCK SWTCH
//PORTC_6
#define SW_D_LOCK GPIO_PIN_6

void setup_gpio_pins(void);

#endif