#include "features.h"
/* +Manual open/close function
When the power window switch is pushed or pulled
continuously, the window opens or closes until the switch
is released.*/
#define passenger_side 0
#define driver_side 1
void manual_OC_func(uint8_t side){
	/*driver's side*/
	if(side == driver_side){
		
					/*up PB*/
		//check if the up PB is clicked 
	while(GPIO_PORTC_DATA_R & PB_D_PASS_UP){
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




