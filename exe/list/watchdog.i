#line 1 "driverlib\\watchdog.c"














































#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 48 "driverlib\\watchdog.c"
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






 
#line 49 "driverlib\\watchdog.c"
#line 1 "./inc/hw_ints.h"
















































#line 58 "./inc/hw_ints.h"






#line 94 "./inc/hw_ints.h"
                                            
#line 170 "./inc/hw_ints.h"






#line 244 "./inc/hw_ints.h"
                                            
#line 283 "./inc/hw_ints.h"






#line 339 "./inc/hw_ints.h"













#line 475 "./inc/hw_ints.h"
















#line 50 "driverlib\\watchdog.c"
#line 1 "./inc/hw_memmap.h"
















































#line 116 "./inc/hw_memmap.h"
                                            

                                            

                                            
#line 141 "./inc/hw_memmap.h"
                                            

                                            
#line 150 "./inc/hw_memmap.h"

#line 51 "driverlib\\watchdog.c"
#line 1 "./inc/hw_types.h"















































#line 63 "./inc/hw_types.h"




















































































#line 52 "driverlib\\watchdog.c"
#line 1 "./inc/hw_watchdog.h"















































#line 56 "./inc/hw_watchdog.h"


































































#line 53 "driverlib\\watchdog.c"
#line 1 "./driverlib/debug.h"
















































extern void __error__(char *pcFilename, uint32_t ui32Line);







#line 69 "./driverlib/debug.h"

#line 54 "driverlib\\watchdog.c"
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










#line 55 "driverlib\\watchdog.c"
#line 1 "./driverlib/watchdog.h"


































































extern _Bool WatchdogRunning(uint32_t ui32Base);
extern void WatchdogEnable(uint32_t ui32Base);
extern void WatchdogResetEnable(uint32_t ui32Base);
extern void WatchdogResetDisable(uint32_t ui32Base);
extern void WatchdogLock(uint32_t ui32Base);
extern void WatchdogUnlock(uint32_t ui32Base);
extern _Bool WatchdogLockState(uint32_t ui32Base);
extern void WatchdogReloadSet(uint32_t ui32Base, uint32_t ui32LoadVal);
extern uint32_t WatchdogReloadGet(uint32_t ui32Base);
extern uint32_t WatchdogValueGet(uint32_t ui32Base);
extern void WatchdogIntRegister(uint32_t ui32Base, void (*pfnHandler)(void));
extern void WatchdogIntUnregister(uint32_t ui32Base);
extern void WatchdogIntEnable(uint32_t ui32Base);
extern uint32_t WatchdogIntStatus(uint32_t ui32Base, _Bool bMasked);
extern void WatchdogIntClear(uint32_t ui32Base);
extern void WatchdogIntTypeSet(uint32_t ui32Base, uint32_t ui32Type);
extern void WatchdogStallEnable(uint32_t ui32Base);
extern void WatchdogStallDisable(uint32_t ui32Base);










#line 56 "driverlib\\watchdog.c"













_Bool
WatchdogRunning(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    return((*((volatile uint32_t *)(ui32Base + 0x00000008))) & 0x00000001);
}














void
WatchdogEnable(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000008))) |= 0x00000001;
}















void
WatchdogResetEnable(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000008))) |= 0x00000002;
}















void
WatchdogResetDisable(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000008))) &= ~(0x00000002);
}












void
WatchdogLock(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000C00))) = 0x00000001;
}












void
WatchdogUnlock(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000C00))) = 0x1ACCE551;
}













_Bool
WatchdogLockState(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    return(((*((volatile uint32_t *)(ui32Base + 0x00000C00))) == 0x00000001) ? 1 : 0);
}



















void
WatchdogReloadSet(uint32_t ui32Base, uint32_t ui32LoadVal)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000000))) = ui32LoadVal;
}













uint32_t
WatchdogReloadGet(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    return((*((volatile uint32_t *)(ui32Base + 0x00000000))));
}












uint32_t
WatchdogValueGet(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    return((*((volatile uint32_t *)(ui32Base + 0x00000004))));
}



























void
WatchdogIntRegister(uint32_t ui32Base, void (*pfnHandler)(void))
{
    
    
    
    ;

    
    
    
    IntRegister(34, pfnHandler);

    
    
    
    IntEnable(34);
}
























void
WatchdogIntUnregister(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    IntDisable(34);

    
    
    
    IntUnregister(34);
}














void
WatchdogIntEnable(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000008))) |= 0x00000001;
}

















uint32_t
WatchdogIntStatus(uint32_t ui32Base, _Bool bMasked)
{
    
    
    
    ;

    
    
    
    
    if(bMasked)
    {
        return((*((volatile uint32_t *)(ui32Base + 0x00000014))));
    }
    else
    {
        return((*((volatile uint32_t *)(ui32Base + 0x00000010))));
    }
}























void
WatchdogIntClear(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x0000000C))) = 0x00000001;
}

























void
WatchdogIntTypeSet(uint32_t ui32Base, uint32_t ui32Type)
{
    
    
    
    ;
    ;


    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000008))) = ((*((volatile uint32_t *)(ui32Base + 0x00000008))) &
                                   ~0x00000004) | ui32Type;
}




















void
WatchdogStallEnable(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000418))) |= 0x00000100;
}
















void
WatchdogStallDisable(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000418))) &= ~(0x00000100);
}







