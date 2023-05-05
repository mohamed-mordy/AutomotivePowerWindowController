#ifndef PINS_CONFIG_H
#define PINS_CONFIG_H

/*DRIVER'S SIDE*/
	/*PORTC*/
#define PB_D_PASS_UP (1<<4)
#define PB_D_PASS_DOWN (1<<5)
#define PB_D_AUTO_UP (1<<6)
#define PB_D_AUTO_DOWN (1<<7)
	/*PORTE*/
#define SW_D_LOCK (1<<1)
#define PB_D_JAM_PROTECT (1<<2)

/*PASSENGER'S SIDE*/
	/*PORTD*/
#define PB_P_PASS_UP (1<<3)
#define PB_P_PASS_DOWN (1<<2)
#define LS_P_WIND_UP (1<<1)
#define LS_P_WIND_DOWN (1<<0)

/*MOTOR DRIVER'S IN PINS*/
	/*PORTF*/
#define MOTOR_IN1 (1<<0)
#define MOTOR_IN2 (1<<1)

#endif /* PINS_CONFIG_H */