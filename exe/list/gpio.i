#line 1 "driverlib\\gpio.c"














































#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 48 "driverlib\\gpio.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 49 "driverlib\\gpio.c"
#line 1 "./inc/hw_gpio.h"















































#line 79 "./inc/hw_gpio.h"







                                            









                                            









                                            



















                                            

                                            
















                                            
                                            
                                            
                                            
                                            



































#line 194 "./inc/hw_gpio.h"
                                            
                                            
                                            

                                            

                                            
                                            
                                            
                                            
                                            
#line 212 "./inc/hw_gpio.h"

#line 50 "driverlib\\gpio.c"
#line 1 "./inc/hw_ints.h"
















































#line 58 "./inc/hw_ints.h"






#line 94 "./inc/hw_ints.h"
                                            
#line 170 "./inc/hw_ints.h"






#line 244 "./inc/hw_ints.h"
                                            
#line 283 "./inc/hw_ints.h"






#line 339 "./inc/hw_ints.h"













#line 475 "./inc/hw_ints.h"
















#line 51 "driverlib\\gpio.c"
#line 1 "./inc/hw_memmap.h"
















































#line 116 "./inc/hw_memmap.h"
                                            

                                            

                                            
#line 141 "./inc/hw_memmap.h"
                                            

                                            
#line 150 "./inc/hw_memmap.h"

#line 52 "driverlib\\gpio.c"
#line 1 "./inc/hw_sysctl.h"















































#line 67 "./inc/hw_sysctl.h"
                                            





                                            



                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            



                                            

                                            


                                            

                                            
#line 124 "./inc/hw_sysctl.h"
                                            


                                            

                                            

                                            

                                            



                                            
                                            

                                            

                                            

                                            


                                            

                                            

                                            

                                            

                                            

                                            

                                            



                                            

                                            

                                            




                                            


                                            

                                            

                                            



                                            
                                            

                                            

                                            

                                            


                                            

                                            


                                            

                                            


                                            

                                            




                                            

                                            

                                            

                                            

                                            

                                            

                                            
                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            
                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            
                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            
                                            

                                            

                                            

                                            

                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            

                                            

                                            
                                            

                                            
                                            

                                            

                                            

                                            
                                            

                                            

                                            
                                            

                                            
                                            

                                            

                                            

                                            


                                            

                                            

                                            

                                            


                                            
                                            

                                            

                                            

                                            


                                            

                                            


                                            

                                            


                                            





                                            

                                            

                                            



                                            
                                            

                                            

                                            

                                            


                                            

                                            

                                            

                                            

                                            


                                            

                                            
#line 433 "./inc/hw_sysctl.h"
                                            








                                            



                                            


                                            



                                            

                                            


                                            








#line 623 "./inc/hw_sysctl.h"
                                            
                                            
                                            
#line 634 "./inc/hw_sysctl.h"






#line 659 "./inc/hw_sysctl.h"






#line 674 "./inc/hw_sysctl.h"
                                            

                                            

                                            

                                            

                                            
#line 701 "./inc/hw_sysctl.h"






#line 727 "./inc/hw_sysctl.h"






#line 764 "./inc/hw_sysctl.h"






#line 787 "./inc/hw_sysctl.h"






#line 807 "./inc/hw_sysctl.h"

















#line 855 "./inc/hw_sysctl.h"






#line 893 "./inc/hw_sysctl.h"














#line 919 "./inc/hw_sysctl.h"
                                            
#line 928 "./inc/hw_sysctl.h"






#line 942 "./inc/hw_sysctl.h"






#line 964 "./inc/hw_sysctl.h"






#line 981 "./inc/hw_sysctl.h"







                                            

                                            

                                            

                                            


                                            

                                            

                                            






#line 1014 "./inc/hw_sysctl.h"
                                            









                                            

                                            

                                            

                                            


                                            


                                            






#line 1051 "./inc/hw_sysctl.h"














#line 1108 "./inc/hw_sysctl.h"






#line 1120 "./inc/hw_sysctl.h"








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            








                                            
#line 1166 "./inc/hw_sysctl.h"


















#line 1194 "./inc/hw_sysctl.h"
                                            
#line 1205 "./inc/hw_sysctl.h"
                                            
#line 1214 "./inc/hw_sysctl.h"






#line 1257 "./inc/hw_sysctl.h"






#line 1287 "./inc/hw_sysctl.h"






#line 1309 "./inc/hw_sysctl.h"






#line 1326 "./inc/hw_sysctl.h"






#line 1341 "./inc/hw_sysctl.h"






#line 1363 "./inc/hw_sysctl.h"






#line 1380 "./inc/hw_sysctl.h"






#line 1394 "./inc/hw_sysctl.h"






#line 1416 "./inc/hw_sysctl.h"






#line 1433 "./inc/hw_sysctl.h"







#line 1446 "./inc/hw_sysctl.h"
                                            


                                            







#line 1466 "./inc/hw_sysctl.h"







#line 1489 "./inc/hw_sysctl.h"






#line 1504 "./inc/hw_sysctl.h"





























                                            

                                            

                                            








































#line 1592 "./inc/hw_sysctl.h"







#line 1615 "./inc/hw_sysctl.h"






#line 1637 "./inc/hw_sysctl.h"







                                            







#line 1668 "./inc/hw_sysctl.h"







#line 1697 "./inc/hw_sysctl.h"











                                            
                                            


                                            
                                            
                                            




                                            
                                            


                                            
                                            
                                            




                                            
                                            


                                            
                                            
                                            




                                            
                                            


                                            
                                            
                                            
















#line 1776 "./inc/hw_sysctl.h"






#line 1788 "./inc/hw_sysctl.h"






#line 1806 "./inc/hw_sysctl.h"




































                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            






#line 1881 "./inc/hw_sysctl.h"



























#line 1916 "./inc/hw_sysctl.h"
















#line 1942 "./inc/hw_sysctl.h"


























































































                                            

                                            

                                            

                                            

                                            

                                            














                                            





















                                            






















                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            






#line 2141 "./inc/hw_sysctl.h"





















                                            






#line 2177 "./inc/hw_sysctl.h"
















#line 2203 "./inc/hw_sysctl.h"














                                            























                                            
































                                            

                                            

                                            

                                            

                                            

                                            







                                            





















                                            







                                            

                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            







                                            







                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            








                                            







                                            

                                            







                                            

                                            








                                            







                                            

                                            







                                            

                                            








                                            








                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            







                                            







                                            








                                            








                                            







                                            

                                            








                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            







                                            







                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            








                                            







                                            

                                            







                                            

                                            








                                            







                                            

                                            







                                            

                                            








                                            








                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            







                                            







                                            








                                            








                                            







                                            

                                            








                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            







                                            







                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            








                                            







                                            

                                            







                                            

                                            








                                            
                                            







                                            

                                            







                                            

                                            








                                            








                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            







                                            
                                            







                                            
                                            








                                            








                                            















                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            






#line 3279 "./inc/hw_sysctl.h"



























#line 3314 "./inc/hw_sysctl.h"
















#line 3340 "./inc/hw_sysctl.h"














                                            























                                            





























                                            







                                            














                                            







                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            






#line 3488 "./inc/hw_sysctl.h"





















                                            






#line 3524 "./inc/hw_sysctl.h"
















#line 3550 "./inc/hw_sysctl.h"














                                            























                                            
































                                            

                                            

                                            

                                            

                                            

                                            







                                            







                                            














                                            






























































                                            


                                            




















#line 53 "driverlib\\gpio.c"
#line 1 "./inc/hw_types.h"















































#line 63 "./inc/hw_types.h"




















































































#line 54 "driverlib\\gpio.c"
#line 1 "./driverlib/debug.h"
















































extern void __error__(char *pcFilename, uint32_t ui32Line);







#line 69 "./driverlib/debug.h"

#line 55 "driverlib\\gpio.c"
#line 1 "./driverlib/gpio.h"







































#line 43 "./driverlib/gpio.h"
#line 44 "./driverlib/gpio.h"

















#line 69 "./driverlib/gpio.h"

















#line 92 "./driverlib/gpio.h"







#line 106 "./driverlib/gpio.h"







#line 120 "./driverlib/gpio.h"







#line 136 "./driverlib/gpio.h"






extern void GPIODirModeSet(uint32_t ui32Port, uint8_t ui8Pins,
                           uint32_t ui32PinIO);
extern uint32_t GPIODirModeGet(uint32_t ui32Port, uint8_t ui8Pin);
extern void GPIOIntTypeSet(uint32_t ui32Port, uint8_t ui8Pins,
                           uint32_t ui32IntType);
extern uint32_t GPIOIntTypeGet(uint32_t ui32Port, uint8_t ui8Pin);
extern void GPIOPadConfigSet(uint32_t ui32Port, uint8_t ui8Pins,
                             uint32_t ui32Strength, uint32_t ui32PadType);
extern void GPIOPadConfigGet(uint32_t ui32Port, uint8_t ui8Pin,
                             uint32_t *pui32Strength, uint32_t *pui32PadType);
extern void GPIOIntEnable(uint32_t ui32Port, uint32_t ui32IntFlags);
extern void GPIOIntDisable(uint32_t ui32Port, uint32_t ui32IntFlags);
extern uint32_t GPIOIntStatus(uint32_t ui32Port, _Bool bMasked);
extern void GPIOIntClear(uint32_t ui32Port, uint32_t ui32IntFlags);
extern void GPIOIntRegister(uint32_t ui32Port, void (*pfnIntHandler)(void));
extern void GPIOIntUnregister(uint32_t ui32Port);
extern void GPIOIntRegisterPin(uint32_t ui32Port, uint32_t ui32Pin,
                               void (*pfnIntHandler)(void));
extern void GPIOIntUnregisterPin(uint32_t ui32Port, uint32_t ui32Pin);
extern int32_t GPIOPinRead(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinWrite(uint32_t ui32Port, uint8_t ui8Pins, uint8_t ui8Val);
extern void GPIOPinConfigure(uint32_t ui32PinConfig);
extern void GPIOPinTypeADC(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeCAN(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeComparator(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeComparatorOutput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeDIVSCLK(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEPI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEthernetLED(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEthernetMII(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOInput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOOutput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOOutputOD(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeHibernateRTCCLK(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeI2C(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeI2CSCL(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeLCD(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeOneWire(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypePWM(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeQEI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeSSI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeTimer(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeTrace(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUART(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUSBAnalog(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUSBDigital(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeWakeHigh(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeWakeLow(uint32_t ui32Port, uint8_t ui8Pins);
extern uint32_t GPIOPinWakeStatus(uint32_t ui32Port);
extern void GPIODMATriggerEnable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIODMATriggerDisable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOADCTriggerEnable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOADCTriggerDisable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOUnlockPin(uint32_t ui32Port, uint8_t ui8Pins);










#line 56 "driverlib\\gpio.c"
#line 1 "./driverlib/interrupt.h"


































































extern _Bool IntMasterEnable(void);
extern _Bool IntMasterDisable(void);
extern void IntRegister(uint32_t ui32Interrupt, void (*pfnHandler)(void));
extern void IntUnregister(uint32_t ui32Interrupt);
extern void IntPriorityGroupingSet(uint32_t ui32Bits);
extern uint32_t IntPriorityGroupingGet(void);
extern void IntPrioritySet(uint32_t ui32Interrupt,
                           uint8_t ui8Priority);
extern int32_t IntPriorityGet(uint32_t ui32Interrupt);
extern void IntEnable(uint32_t ui32Interrupt);
extern void IntDisable(uint32_t ui32Interrupt);
extern uint32_t IntIsEnabled(uint32_t ui32Interrupt);
extern void IntPendSet(uint32_t ui32Interrupt);
extern void IntPendClear(uint32_t ui32Interrupt);
extern void IntPriorityMaskSet(uint32_t ui32PriorityMask);
extern uint32_t IntPriorityMaskGet(void);
extern void IntTrigger(uint32_t ui32Interrupt);










#line 57 "driverlib\\gpio.c"






static const uint32_t g_ppui32GPIOIntMapBlizzard[][2] =
{
    { 0x40004000, 16 },
    { 0x40058000, 16 },
    { 0x40005000, 17 },
    { 0x40059000, 17 },
    { 0x40006000, 18 },
    { 0x4005A000, 18 },
    { 0x40007000,  19 },
    { 0x4005B000, 19 },
    { 0x40024000, 20 },
    { 0x4005C000, 20 },
    { 0x40025000, 46 },
    { 0x4005D000, 46 },
    { 0x40026000, 47 },
    { 0x4005E000, 47 },
    { 0x40027000, 48 },
    { 0x4005F000, 48 },
    { 0x4003D000, 70 },
    { 0x40060000, 70 },
    { 0x40061000, 71 },
    { 0x40062000, 72 },
    { 0x40063000, 127 },
    { 0x40064000, 128 },
    { 0x40065000, 132 },
    { 0x40066000, 140 },
};
static const uint_fast32_t g_ui32GPIOIntMapBlizzardRows =
    sizeof(g_ppui32GPIOIntMapBlizzard) / sizeof(g_ppui32GPIOIntMapBlizzard[0]);

static const uint32_t g_ppui32GPIOIntMapSnowflake[][2] =
{
    { 0x40004000, 16 },
    { 0x40058000, 16 },
    { 0x40005000, 17 },
    { 0x40059000, 17 },
    { 0x40006000, 18 },
    { 0x4005A000, 18 },
    { 0x40007000,  19 },
    { 0x4005B000, 19 },
    { 0x40024000, 20 },
    { 0x4005C000, 20 },
    { 0x40025000, 46 },
    { 0x4005D000, 46 },
    { 0x40026000, 47 },
    { 0x4005E000, 47 },
    { 0x40027000, 48 },
    { 0x4005F000, 48 },
    { 0x4003D000, 67 },
    { 0x40060000, 67 },
    { 0x40061000, 68 },
    { 0x40062000, 69 },
    { 0x40063000, 88 },
    { 0x40064000, 89 },
    { 0x40065000, 92 },
    { 0x40066000, 100 },
    { 0x40067000, 108 },
    { 0x40068000, 109 },
    { 0x40069000, 127 },
};
static const uint_fast32_t g_ui32GPIOIntMapSnowflakeRows =
    (sizeof(g_ppui32GPIOIntMapSnowflake) /
     sizeof(g_ppui32GPIOIntMapSnowflake[0]));







static const uint32_t g_pui32GPIOBaseAddrs[] =
{
    0x40004000, 0x40058000,
    0x40005000, 0x40059000,
    0x40006000, 0x4005A000,
    0x40007000, 0x4005B000,
    0x40024000, 0x4005C000,
    0x40025000, 0x4005D000,
    0x40026000, 0x4005E000,
    0x40027000, 0x4005F000,
    0x4003D000, 0x40060000,
    0x40061000, 0x40061000,
    0x40062000, 0x40062000,
    0x40063000, 0x40063000,
    0x40064000, 0x40064000,
    0x40065000, 0x40065000,
    0x40066000, 0x40066000,
    0x40067000, 0x40067000,
    0x40068000, 0x40068000,
    0x40069000, 0x40069000,
};














#line 201 "driverlib\\gpio.c"













static uint32_t
_GPIOIntNumberGet(uint32_t ui32Port)
{
    uint_fast32_t ui32Idx, ui32Rows;
    const uint32_t (*ppui32GPIOIntMap)[2];

    
    
    
    ;

    ppui32GPIOIntMap = g_ppui32GPIOIntMapBlizzard;
    ui32Rows = g_ui32GPIOIntMapBlizzardRows;

    if((((*((volatile uint32_t *)(0x400FE000))) & (0x70000000 | 0x00FF0000)) == (0x10000000 | 0x000A0000)))
    {
        ppui32GPIOIntMap = g_ppui32GPIOIntMapSnowflake;
        ui32Rows = g_ui32GPIOIntMapSnowflakeRows;
    }

    
    
    
    
    for(ui32Idx = 0; ui32Idx < ui32Rows; ui32Idx++)
    {
        
        
        
        if(ppui32GPIOIntMap[ui32Idx][0] == ui32Port)
        {
            
            
            
            return(ppui32GPIOIntMap[ui32Idx][1]);
        }
    }

    
    
    
    return(0);
}











































void
GPIODirModeSet(uint32_t ui32Port, uint8_t ui8Pins, uint32_t ui32PinIO)
{
    
    
    
    ;
    ;



    
    
    
    (*((volatile uint32_t *)(ui32Port + 0x00000400))) = ((ui32PinIO & 1) ?
                                    ((*((volatile uint32_t *)(ui32Port + 0x00000400))) | ui8Pins) :
                                    ((*((volatile uint32_t *)(ui32Port + 0x00000400))) & ~(ui8Pins)));
    (*((volatile uint32_t *)(ui32Port + 0x00000420))) = ((ui32PinIO & 2) ?
                                      ((*((volatile uint32_t *)(ui32Port + 0x00000420))) |
                                       ui8Pins) :
                                      ((*((volatile uint32_t *)(ui32Port + 0x00000420))) &
                                       ~(ui8Pins)));
}

















uint32_t
GPIODirModeGet(uint32_t ui32Port, uint8_t ui8Pin)
{
    uint32_t ui32Dir, ui32AFSEL;

    
    
    
    ;
    ;

    
    
    
    ui8Pin = 1 << ui8Pin;

    
    
    
    ui32Dir = (*((volatile uint32_t *)(ui32Port + 0x00000400)));
    ui32AFSEL = (*((volatile uint32_t *)(ui32Port + 0x00000420)));
    return(((ui32Dir & ui8Pin) ? 1 : 0) | ((ui32AFSEL & ui8Pin) ? 2 : 0));
}









































void
GPIOIntTypeSet(uint32_t ui32Port, uint8_t ui8Pins,
               uint32_t ui32IntType)
{
    
    
    
    ;
    ;




    ;



    
    
    
    (*((volatile uint32_t *)(ui32Port + 0x00000408))) = ((ui32IntType & 1) ?
                                    ((*((volatile uint32_t *)(ui32Port + 0x00000408))) | ui8Pins) :
                                    ((*((volatile uint32_t *)(ui32Port + 0x00000408))) & ~(ui8Pins)));
    (*((volatile uint32_t *)(ui32Port + 0x00000404))) = ((ui32IntType & 2) ?
                                   ((*((volatile uint32_t *)(ui32Port + 0x00000404))) | ui8Pins) :
                                   ((*((volatile uint32_t *)(ui32Port + 0x00000404))) & ~(ui8Pins)));
    (*((volatile uint32_t *)(ui32Port + 0x0000040C))) = ((ui32IntType & 4) ?
                                    ((*((volatile uint32_t *)(ui32Port + 0x0000040C))) | ui8Pins) :
                                    ((*((volatile uint32_t *)(ui32Port + 0x0000040C))) & ~(ui8Pins)));

    
    
    
    
    (*((volatile uint32_t *)(ui32Port + 0x00000538))) = ((ui32IntType & 0x10000) ?
                                   ((*((volatile uint32_t *)(ui32Port + 0x00000538))) | 0x01) :
                                   ((*((volatile uint32_t *)(ui32Port + 0x00000538))) & ~(0x01)));
}

















uint32_t
GPIOIntTypeGet(uint32_t ui32Port, uint8_t ui8Pin)
{
    uint32_t ui32IBE, ui32IS, ui32IEV, ui32SI;

    
    
    
    ;
    ;

    
    
    
    ui8Pin = 1 << ui8Pin;

    
    
    
    ui32IBE = (*((volatile uint32_t *)(ui32Port + 0x00000408)));
    ui32IS = (*((volatile uint32_t *)(ui32Port + 0x00000404)));
    ui32IEV = (*((volatile uint32_t *)(ui32Port + 0x0000040C)));
    ui32SI = (*((volatile uint32_t *)(ui32Port + 0x00000538)));

    return(((ui32IBE & ui8Pin) ? 1 : 0) | ((ui32IS & ui8Pin) ? 2 : 0) |
			((ui32IEV & ui8Pin) ? 4 : 0) | ((ui32SI & 0x01) ? 0x10000 : 0)); 
}


































































void
GPIOPadConfigSet(uint32_t ui32Port, uint8_t ui8Pins,
                 uint32_t ui32Strength, uint32_t ui32PinType)
{
    uint8_t ui8Bit;

    
    
    
    ;
    ;
#line 569 "driverlib\\gpio.c"
    ;
#line 576 "driverlib\\gpio.c"

    if (!((((*((volatile uint32_t *)(0x400FE000))) & (0x70000000 | 0x00FF0000)) == (0x10000000 | 0x00050000))))
    {
        
        
        
        
        
        for(ui8Bit = 0; ui8Bit < 8; ui8Bit++)
        {
            if(ui8Pins & (1 << ui8Bit))
            {
                (*((volatile uint32_t *)(ui32Port + 0x00000FC4))) = ((*((volatile uint32_t *)(ui32Port + 0x00000FC4))) &
                                               ~(0x3 << (2 * ui8Bit)));
                (*((volatile uint32_t *)(ui32Port + 0x00000FC4))) |= (((ui32Strength >> 5) & 0x3) <<
                                                (2 * ui8Bit));
            }
        }
    }
	
    
    
    
    (*((volatile uint32_t *)(ui32Port + 0x00000500))) = ((ui32Strength & 1) ?
                                     ((*((volatile uint32_t *)(ui32Port + 0x00000500))) |
                                      ui8Pins) :
                                     ((*((volatile uint32_t *)(ui32Port + 0x00000500))) &
                                      ~(ui8Pins)));
    (*((volatile uint32_t *)(ui32Port + 0x00000504))) = ((ui32Strength & 2) ?
                                     ((*((volatile uint32_t *)(ui32Port + 0x00000504))) |
                                      ui8Pins) :
                                     ((*((volatile uint32_t *)(ui32Port + 0x00000504))) &
                                      ~(ui8Pins)));
    (*((volatile uint32_t *)(ui32Port + 0x00000508))) = ((ui32Strength & 4) ?
                                     ((*((volatile uint32_t *)(ui32Port + 0x00000508))) |
                                      ui8Pins) :
                                     ((*((volatile uint32_t *)(ui32Port + 0x00000508))) &
                                      ~(ui8Pins)));
    (*((volatile uint32_t *)(ui32Port + 0x00000518))) = ((ui32Strength & 8) ?
                                    ((*((volatile uint32_t *)(ui32Port + 0x00000518))) |
                                     ui8Pins) :
                                    ((*((volatile uint32_t *)(ui32Port + 0x00000518))) &
                                     ~(ui8Pins)));

    if (!((((*((volatile uint32_t *)(0x400FE000))) & (0x70000000 | 0x00FF0000)) == (0x10000000 | 0x00050000))))
    {
        
        
        
        
        
        (*((volatile uint32_t *)(ui32Port + 0x0000053C))) = ((ui32Strength & 0x10) ?
                                          ((*((volatile uint32_t *)(ui32Port + 0x0000053C))) |
                                           ui8Pins) :
                                          ((*((volatile uint32_t *)(ui32Port + 0x0000053C))) &
                                           ~(ui8Pins)));
    }
	
    
    
    
    (*((volatile uint32_t *)(ui32Port + 0x0000050C))) = ((ui32PinType & 1) ?
                                  ((*((volatile uint32_t *)(ui32Port + 0x0000050C))) | ui8Pins) :
                                  ((*((volatile uint32_t *)(ui32Port + 0x0000050C))) & ~(ui8Pins)));
    (*((volatile uint32_t *)(ui32Port + 0x00000510))) = ((ui32PinType & 2) ?
                                  ((*((volatile uint32_t *)(ui32Port + 0x00000510))) | ui8Pins) :
                                  ((*((volatile uint32_t *)(ui32Port + 0x00000510))) & ~(ui8Pins)));
    (*((volatile uint32_t *)(ui32Port + 0x00000514))) = ((ui32PinType & 4) ?
                                  ((*((volatile uint32_t *)(ui32Port + 0x00000514))) | ui8Pins) :
                                  ((*((volatile uint32_t *)(ui32Port + 0x00000514))) & ~(ui8Pins)));
    (*((volatile uint32_t *)(ui32Port + 0x0000051C))) = ((ui32PinType & 8) ?
                                  ((*((volatile uint32_t *)(ui32Port + 0x0000051C))) | ui8Pins) :
                                  ((*((volatile uint32_t *)(ui32Port + 0x0000051C))) & ~(ui8Pins)));

    if (!((((*((volatile uint32_t *)(0x400FE000))) & (0x70000000 | 0x00FF0000)) == (0x10000000 | 0x00050000))))
    {
        
        
        
        
        
        (*((volatile uint32_t *)(ui32Port + 0x00000544))) = ((ui32PinType & 0x200) ?
                                            ((*((volatile uint32_t *)(ui32Port + 0x00000544))) |
                                             ui8Pins) :
                                            ((*((volatile uint32_t *)(ui32Port + 0x00000544))) &
                                             ~(ui8Pins)));
        (*((volatile uint32_t *)(ui32Port + 0x00000540))) = ((ui32PinType & 0x300) ?
                                            ((*((volatile uint32_t *)(ui32Port + 0x00000540))) |
                                             ui8Pins) :
                                            ((*((volatile uint32_t *)(ui32Port + 0x00000540))) &
                                             ~(ui8Pins)));
    }

    
    
    
    (*((volatile uint32_t *)(ui32Port + 0x00000528))) =
          ((ui32PinType == 0x00000000) ?
           ((*((volatile uint32_t *)(ui32Port + 0x00000528))) | ui8Pins) :
           ((*((volatile uint32_t *)(ui32Port + 0x00000528))) & ~(ui8Pins)));
}




















void
GPIOPadConfigGet(uint32_t ui32Port, uint8_t ui8Pin,
                 uint32_t *pui32Strength, uint32_t *pui32PinType)
{
    uint32_t ui32PinType, ui32Strength;

    
    
    
    ;
    ;

    
    
    
    ui8Pin = (1 << ui8Pin);

    
    
    
    ui32Strength = (((*((volatile uint32_t *)(ui32Port + 0x00000500))) & ui8Pin) ? 1 : 0);
    ui32Strength |= (((*((volatile uint32_t *)(ui32Port + 0x00000504))) & ui8Pin) ? 2 : 0);
    ui32Strength |= (((*((volatile uint32_t *)(ui32Port + 0x00000508))) & ui8Pin) ? 4 : 0);
    ui32Strength |= (((*((volatile uint32_t *)(ui32Port + 0x00000518))) & ui8Pin) ? 8 : 0);
    if (!((((*((volatile uint32_t *)(0x400FE000))) & (0x70000000 | 0x00FF0000)) == (0x10000000 | 0x00050000))))
    {
        ui32Strength |= (((*((volatile uint32_t *)(ui32Port + 0x0000053C))) & ui8Pin) ? 0x10 : 0);
        ui32Strength |= ((((*((volatile uint32_t *)(ui32Port + 0x00000FC4))) >>
                           (2 * ui8Pin)) & 0x3) << 5);
    }
    *pui32Strength = ui32Strength;

    
    
    
    ui32PinType = (((*((volatile uint32_t *)(ui32Port + 0x0000050C))) & ui8Pin) ? 1 : 0);
    ui32PinType |= (((*((volatile uint32_t *)(ui32Port + 0x00000510))) & ui8Pin) ? 2 : 0);
    ui32PinType |= (((*((volatile uint32_t *)(ui32Port + 0x00000514))) & ui8Pin) ? 4 : 0);
    ui32PinType |= (((*((volatile uint32_t *)(ui32Port + 0x0000051C))) & ui8Pin) ? 8 : 0);
    if (!((((*((volatile uint32_t *)(0x400FE000))) & (0x70000000 | 0x00FF0000)) == (0x10000000 | 0x00050000))))
    {
        if((*((volatile uint32_t *)(ui32Port + 0x00000540))) & ui8Pin)
        {
            ui32PinType |= (((*((volatile uint32_t *)(ui32Port + 0x00000544))) & ui8Pin) ?
                            0x200 : 0x100);
        }
    }
    *pui32PinType = ui32PinType;
}




































void
GPIOIntEnable(uint32_t ui32Port, uint32_t ui32IntFlags)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Port + 0x00000410))) |= ui32IntFlags;
}



























void
GPIOIntDisable(uint32_t ui32Port, uint32_t ui32IntFlags)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Port + 0x00000410))) &= ~(ui32IntFlags);
}

















uint32_t
GPIOIntStatus(uint32_t ui32Port, _Bool bMasked)
{
    
    
    
    ;

    
    
    
    if(bMasked)
    {
        return((*((volatile uint32_t *)(ui32Port + 0x00000418))));
    }
    else
    {
        return((*((volatile uint32_t *)(ui32Port + 0x00000414))));
    }
}

























void
GPIOIntClear(uint32_t ui32Port, uint32_t ui32IntFlags)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Port + 0x0000041C))) = ui32IntFlags;
}





















void
GPIOIntRegister(uint32_t ui32Port, void (*pfnIntHandler)(void))
{
    uint32_t ui32Int;

    
    
    
    ;

    
    
    
    ui32Int = _GPIOIntNumberGet(ui32Port);

    ;

    
    
    
    IntRegister(ui32Int, pfnIntHandler);

    
    
    
    IntEnable(ui32Int);
}


















void
GPIOIntUnregister(uint32_t ui32Port)
{
    uint32_t ui32Int;

    
    
    
    ;

    
    
    
    ui32Int = _GPIOIntNumberGet(ui32Port);

    ;

    
    
    
    IntDisable(ui32Int);

    
    
    
    IntUnregister(ui32Int);
}





















void
GPIOIntRegisterPin(uint32_t ui32Port, uint32_t ui32Pin,
                   void (*pfnIntHandler)(void))
{
    uint32_t ui32Int;

    
    
    
    ;
    ;
    ;

    
    
    
    ui32Int = _GPIOIntNumberGet(ui32Port);

    
    
    
    IntRegister((ui32Int + ui32Pin), pfnIntHandler);

    
    
    
    IntEnable(ui32Int + ui32Pin);
}


















void
GPIOIntUnregisterPin(uint32_t ui32Port, uint32_t ui32Pin)
{
    uint32_t ui32Int;

    
    
    
    ;
    ;

    
    
    
    ui32Int = _GPIOIntNumberGet(ui32Port);

    
    
    
    IntDisable(ui32Int + ui32Pin);

    
    
    
    IntUnregister(ui32Int + ui32Pin);
}






















int32_t
GPIOPinRead(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    return((*((volatile uint32_t *)(ui32Port + (0x00000000 + (ui8Pins << 2))))));
}



















void
GPIOPinWrite(uint32_t ui32Port, uint8_t ui8Pins, uint8_t ui8Val)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Port + (0x00000000 + (ui8Pins << 2))))) = ui8Val;
}






























void
GPIOPinTypeADC(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000000);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001,
                     0x00000000);
}

































void
GPIOPinTypeCAN(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000066, 0x00000008);
}
































void
GPIOPinTypeComparator(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000000);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001,
                     0x00000000);
}



















void GPIOPinTypeComparatorOutput(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001, 0x00000008);
}



















void GPIOPinTypeDIVSCLK(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001, 0x00000008);
}



































void
GPIOPinTypeEPI(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000066, 0x00000008);
}
































void
GPIOPinTypeEthernetLED(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000066, 0x00000008);
}
































void
GPIOPinTypeEthernetMII(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000066, 0x00000008);
}



























void
GPIOPinTypeGPIOInput(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000000);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001, 0x00000008);
}



























void
GPIOPinTypeGPIOOutput(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001, 0x00000008);

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000001);
}



























void
GPIOPinTypeGPIOOutputOD(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001, 0x00000009);

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000001);
}



















void GPIOPinTypeHibernateRTCCLK(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001, 0x00000008);
}
































void
GPIOPinTypeI2C(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001, 0x00000009);
}
































void
GPIOPinTypeI2CSCL(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001, 0x00000008);
}

































void
GPIOPinTypeLCD(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000066, 0x00000008);
}

































void
GPIOPinTypeOneWire(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001, 0x00000008);
}

































void
GPIOPinTypePWM(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001, 0x00000008);
}

































void
GPIOPinTypeQEI(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001,
                     0x0000000A);
}

































void
GPIOPinTypeSSI(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001, 0x00000008);
}

































void
GPIOPinTypeTimer(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001, 0x00000008);
}
































void
GPIOPinTypeTrace(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001, 0x00000008);
}

































void
GPIOPinTypeUART(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001, 0x00000008);
}
































void
GPIOPinTypeUSBAnalog(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000000);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001,
                     0x00000000);
}





































void
GPIOPinTypeUSBDigital(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000002);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001, 0x00000008);
}



























void
GPIOPinTypeWakeHigh(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000000);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001,
                     0x00000208);
}



























void
GPIOPinTypeWakeLow(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    GPIODirModeSet(ui32Port, ui8Pins, 0x00000000);

    
    
    
    GPIOPadConfigSet(ui32Port, ui8Pins, 0x00000001,
                     0x00000108);
}
























uint32_t
GPIOPinWakeStatus(uint32_t ui32Port)
{
    return((*((volatile uint32_t *)(ui32Port + 0x00000548))));
}




























void
GPIOPinConfigure(uint32_t ui32PinConfig)
{
    uint32_t ui32Base, ui32Shift;

    
    
    
    ;
    ;

    
    
    
    ui32Base = (ui32PinConfig >> 16) & 0xff;

    
    
    
    
    if((*((volatile uint32_t *)(0x400FE06C))) & (1 << ui32Base))
    {
        ui32Base = g_pui32GPIOBaseAddrs[(ui32Base << 1) + 1];
    }
    else
    {
        ui32Base = g_pui32GPIOBaseAddrs[ui32Base << 1];
    }

    
    
    
    ui32Shift = (ui32PinConfig >> 8) & 0xff;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x0000052C))) = (((*((volatile uint32_t *)(ui32Base + 0x0000052C))) &
                                      ~(0xf << ui32Shift)) |
                                     ((ui32PinConfig & 0xf) << ui32Shift));
}
















void
GPIODMATriggerEnable(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Port + 0x00000534))) |= ui8Pins;
}















void
GPIODMATriggerDisable(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Port + 0x00000534))) &= (~ui8Pins);
}


















void
GPIOADCTriggerEnable(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Port + 0x00000530))) |= ui8Pins;
}















void
GPIOADCTriggerDisable(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Port + 0x00000530))) &= (~ui8Pins);
}

















void
GPIOUnlockPin(uint32_t ui32Port, uint8_t ui8Pins)
{
    
    
    
    ;

	
	
	
	(*((volatile uint32_t *)(ui32Port + 0x00000520))) = 0x4C4F434B;

	
	
	
	(*((volatile uint32_t *)(ui32Port + 0x00000524))) |= ui8Pins;
}







