#ifndef PINS_CONFIG_H
#define PINS_CONFIG_H


#define PORT_DRIVER_SIDE_PB             GPIO_PORTC_DATA_R
#define PORT_DRIVER_SWITECES            GPIO_PORTD_DATA_R
#define PORT_PASS_SIDE_PB               GPIO_PORTE_DATA_R
#define PORT_LIMIT_SWITCHES             GPIO_PORTD_DATA_R
#define PORT_Motor_Driver_Control       GPIO_PORTF_DATA_R

/*DRIVER'S SIDE*/
	/*PORTC*/
#define PB_D_PASS_UP   4
#define PB_D_PASS_DOWN 5
#define PB_D_AUTO_UP   6
#define PB_D_AUTO_DOWN 7

	/*PORTE*/
#define SW_D_LOCK       1
#define PB_D_JAM_PROTECT 2

/*PASSENGER'S SIDE*/
	/*PORTD*/
#define PB_P_PASS_UP    3
#define PB_P_PASS_DOWN  2
#define LS_P_WIND_UP    1
#define LS_P_WIND_DOWN  0


/*MOTOR DRIVER'S IN PINS*/
	/*PORTF*/
#define MOTOR_Driver_PWM   4
#define MOTOR_Driver_EN    3
#define MOTOR_Driver_DIR   2
#endif /* PINS_CONFIG_H */
