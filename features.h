#include "pins_config.h"
#include <stdint.h>
#include "TM4C123GH6PM.h"
#ifndef FEATURES_H
#define FEATURES_H

/* +Manual open/close function
When the power window switch is pushed or pulled
continuously, the window opens or closes until the switch
is released.*/
void manual_OC_func(uint8_t side);




#endif /* FEATURES_H */