#line 1 "driverlib\\hibernate.c"














































#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 48 "driverlib\\hibernate.c"
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






 
#line 49 "driverlib\\hibernate.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\time.h"
 
 
 
 









 





 













#line 41 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\time.h"


  



    typedef unsigned int size_t;    
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\time.h"




    
 
#line 73 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\time.h"





typedef unsigned int clock_t;     
typedef unsigned int time_t;      

#pragma push
#pragma anon_unions

struct tm {
    int tm_sec;   
 
    int tm_min;    
    int tm_hour;   
    int tm_mday;   
    int tm_mon;    
    int tm_year;   
    int tm_wday;   
    int tm_yday;   
    int tm_isdst;  
    union {        
        struct {
            int __extra_1, __extra_2;
        };
        struct {
            long __extra_1_long, __extra_2_long;
        };
        struct {
            char *__extra_1_cptr, *__extra_2_cptr;
        };
        struct {
            void *__extra_1_vptr, *__extra_2_vptr;
        };
    };
};

#pragma pop

   



 

extern __declspec(__nothrow) clock_t clock(void);
   





 
extern __declspec(__nothrow) double difftime(time_t  , time_t  );
   


 
extern __declspec(__nothrow) time_t mktime(struct tm *  ) __attribute__((__nonnull__(1)));
   













 
extern __declspec(__nothrow) time_t time(time_t *  );
   






 

extern __declspec(__nothrow) char *asctime(const struct tm *  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) char *_asctime_r(const struct tm *  ,
                                char * __restrict  ) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) char *asctime_r(const struct tm *  ,
                               char * __restrict  ) __attribute__((__nonnull__(1,2)));

   



 
extern __declspec(__nothrow) char *ctime(const time_t *  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) struct tm *gmtime(const time_t *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) struct tm *localtime(const time_t *  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) struct tm *_localtime_r(const time_t * __restrict  ,
                                       struct tm * __restrict  ) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) struct tm *localtime_r(const time_t * __restrict  ,
                                      struct tm * __restrict  ) __attribute__((__nonnull__(1,2)));

   



 
extern __declspec(__nothrow) size_t strftime(char * __restrict  , size_t  ,
                       const char * __restrict  ,
                       const struct tm * __restrict  ) __attribute__((__nonnull__(1,3,4)));
   











































 











#line 280 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\time.h"



 

#line 50 "driverlib\\hibernate.c"
#line 1 "./inc/hw_hibernate.h"















































#line 55 "./inc/hw_hibernate.h"
                                            
#line 81 "./inc/hw_hibernate.h"
                                            































#line 119 "./inc/hw_hibernate.h"
                                            
#line 133 "./inc/hw_hibernate.h"








                                            


                                            


                                            









                                            

                                            

                                            

                                            

                                            









                                            


                                            

                                            

                                            

                                            








                                            


                                            


                                            

                                            



























                                            






















#line 260 "./inc/hw_hibernate.h"






#line 275 "./inc/hw_hibernate.h"






#line 288 "./inc/hw_hibernate.h"






#line 302 "./inc/hw_hibernate.h"






#line 315 "./inc/hw_hibernate.h"
























                                            


                                            

                                            

                                            

                                            








#line 365 "./inc/hw_hibernate.h"








                                            




                                            




                                            




                                            






























































































#line 51 "driverlib\\hibernate.c"
#line 1 "./inc/hw_ints.h"
















































#line 58 "./inc/hw_ints.h"






#line 94 "./inc/hw_ints.h"
                                            
#line 170 "./inc/hw_ints.h"






#line 244 "./inc/hw_ints.h"
                                            
#line 283 "./inc/hw_ints.h"






#line 339 "./inc/hw_ints.h"













#line 475 "./inc/hw_ints.h"
















#line 52 "driverlib\\hibernate.c"
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














                                            























                                            
































                                            

                                            

                                            

                                            

                                            

                                            







                                            







                                            














                                            






























































                                            


                                            




















#line 53 "driverlib\\hibernate.c"
#line 1 "./inc/hw_types.h"















































#line 63 "./inc/hw_types.h"




















































































#line 54 "driverlib\\hibernate.c"
#line 1 "./driverlib/debug.h"
















































extern void __error__(char *pcFilename, uint32_t ui32Line);







#line 69 "./driverlib/debug.h"

#line 55 "driverlib\\hibernate.c"
#line 1 "./driverlib/hibernate.h"


























































#line 65 "./driverlib/hibernate.h"






#line 78 "./driverlib/hibernate.h"






#line 94 "./driverlib/hibernate.h"







#line 107 "./driverlib/hibernate.h"















#line 134 "./driverlib/hibernate.h"






#line 154 "./driverlib/hibernate.h"






#line 172 "./driverlib/hibernate.h"






#line 188 "./driverlib/hibernate.h"






extern void HibernateGPIORetentionEnable(void);
extern void HibernateGPIORetentionDisable(void);
extern _Bool HibernateGPIORetentionGet(void);
extern void HibernateEnableExpClk(uint32_t ui32HibClk);
extern void HibernateDisable(void);
extern void HibernateRTCEnable(void);
extern void HibernateRTCDisable(void);
extern void HibernateWakeSet(uint32_t ui32WakeFlags);
extern uint32_t HibernateWakeGet(void);
extern void HibernateLowBatSet(uint32_t ui32LowBatFlags);
extern uint32_t HibernateLowBatGet(void);
extern void HibernateRTCSet(uint32_t ui32RTCValue);
extern uint32_t HibernateRTCGet(void);
extern void HibernateRTCMatchSet(uint32_t ui32Match, uint32_t ui32Value);
extern uint32_t HibernateRTCMatchGet(uint32_t ui32Match);
extern void HibernateRTCTrimSet(uint32_t ui32Trim);
extern uint32_t HibernateRTCTrimGet(void);
extern void HibernateDataSet(uint32_t *pui32Data, uint32_t ui32Count);
extern void HibernateDataGet(uint32_t *pui32Data, uint32_t ui32Count);
extern void HibernateRequest(void);
extern void HibernateIntEnable(uint32_t ui32IntFlags);
extern void HibernateIntDisable(uint32_t ui32IntFlags);
extern void HibernateIntRegister(void (*pfnHandler)(void));
extern void HibernateIntUnregister(void);
extern uint32_t HibernateIntStatus(_Bool bMasked);
extern void HibernateIntClear(uint32_t ui32IntFlags);
extern uint32_t HibernateIsActive(void);
extern void HibernateRTCSSMatchSet(uint32_t ui32Match, uint32_t ui32Value);
extern uint32_t HibernateRTCSSMatchGet(uint32_t ui32Match);
extern uint32_t HibernateRTCSSGet(void);
extern void HibernateClockConfig(uint32_t ui32Config);
extern void HibernateBatCheckStart(void);
extern uint32_t HibernateBatCheckDone(void);
extern void HibernateCounterMode(uint32_t ui32Config);
extern void HibernateCalendarSet(struct tm *psTime);
extern int HibernateCalendarGet(struct tm *psTime);
extern void HibernateCalendarMatchSet(uint32_t ui32Index, struct tm *psTime);
extern void HibernateCalendarMatchGet(uint32_t ui32Index, struct tm *psTime);
extern void HibernateTamperEnable(void);
extern void HibernateTamperEventsConfig(uint32_t ui32Config);
extern _Bool HibernateTamperEventsGet(uint32_t ui32Index, uint32_t *pui32RTC,
                                       uint32_t *pui32Event);
extern void HibernateTamperEventsClear(void);
extern void HibernateTamperEventsClearNoLock(void);
extern void HibernateTamperUnLock(void);
extern void HibernateTamperLock(void);
extern void HibernateTamperDisable(void);
extern void HibernateTamperIOEnable(uint32_t ui32Input, uint32_t ui32Config);
extern void HibernateTamperIODisable(uint32_t ui32Input);
extern uint32_t HibernateTamperStatusGet(void);
extern void HibernateTamperExtOscRecover(void);
extern _Bool HibernateTamperExtOscValid(void);










#line 56 "driverlib\\hibernate.c"
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










#line 57 "driverlib\\hibernate.c"
#line 1 "./driverlib/sysctl.h"






























































#line 140 "./driverlib/sysctl.h"








#line 155 "./driverlib/sysctl.h"








#line 171 "./driverlib/sysctl.h"







#line 185 "./driverlib/sysctl.h"
                                            





















#line 214 "./driverlib/sysctl.h"







#line 347 "./driverlib/sysctl.h"










                                            
                                            

                                            
                                            
#line 400 "./driverlib/sysctl.h"







#line 477 "./driverlib/sysctl.h"

















#line 501 "./driverlib/sysctl.h"








                                            

                                            











#line 531 "./driverlib/sysctl.h"






#line 550 "./driverlib/sysctl.h"















#line 571 "./driverlib/sysctl.h"


























extern uint32_t SysCtlSRAMSizeGet(void);
extern uint32_t SysCtlFlashSizeGet(void);
extern uint32_t SysCtlFlashSectorSizeGet(void);
extern _Bool SysCtlPeripheralPresent(uint32_t ui32Peripheral);
extern _Bool SysCtlPeripheralReady(uint32_t ui32Peripheral);
extern void SysCtlPeripheralPowerOn(uint32_t ui32Peripheral);
extern void SysCtlPeripheralPowerOff(uint32_t ui32Peripheral);
extern void SysCtlPeripheralReset(uint32_t ui32Peripheral);
extern void SysCtlPeripheralEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralSleepEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralSleepDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDeepSleepEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDeepSleepDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralClockGating(_Bool bEnable);
extern void SysCtlIntRegister(void (*pfnHandler)(void));
extern void SysCtlIntUnregister(void);
extern void SysCtlIntEnable(uint32_t ui32Ints);
extern void SysCtlIntDisable(uint32_t ui32Ints);
extern void SysCtlIntClear(uint32_t ui32Ints);
extern uint32_t SysCtlIntStatus(_Bool bMasked);
extern void SysCtlLDOSleepSet(uint32_t ui32Voltage);
extern uint32_t SysCtlLDOSleepGet(void);
extern void SysCtlLDODeepSleepSet(uint32_t ui32Voltage);
extern uint32_t SysCtlLDODeepSleepGet(void);
extern void SysCtlSleepPowerSet(uint32_t ui32Config);
extern void SysCtlDeepSleepPowerSet(uint32_t ui32Config);
extern void SysCtlReset(void);
extern void SysCtlSleep(void);
extern void SysCtlDeepSleep(void);
extern uint32_t SysCtlResetCauseGet(void);
extern void SysCtlResetCauseClear(uint32_t ui32Causes);
extern void SysCtlBrownOutConfigSet(uint32_t ui32Config,
                                    uint32_t ui32Delay);
extern void SysCtlDelay(uint32_t ui32Count);
extern void SysCtlMOSCConfigSet(uint32_t ui32Config);
extern uint32_t SysCtlPIOSCCalibrate(uint32_t ui32Type);
extern void SysCtlClockSet(uint32_t ui32Config);
extern uint32_t SysCtlClockGet(void);
extern void SysCtlDeepSleepClockSet(uint32_t ui32Config);
extern void SysCtlDeepSleepClockConfigSet(uint32_t ui32Div,
                                          uint32_t ui32Config);
extern void SysCtlPWMClockSet(uint32_t ui32Config);
extern uint32_t SysCtlPWMClockGet(void);
extern void SysCtlIOSCVerificationSet(_Bool bEnable);
extern void SysCtlMOSCVerificationSet(_Bool bEnable);
extern void SysCtlPLLVerificationSet(_Bool bEnable);
extern void SysCtlClkVerificationClear(void);
extern void SysCtlGPIOAHBEnable(uint32_t ui32GPIOPeripheral);
extern void SysCtlGPIOAHBDisable(uint32_t ui32GPIOPeripheral);
extern void SysCtlUSBPLLEnable(void);
extern void SysCtlUSBPLLDisable(void);
extern uint32_t SysCtlClockFreqSet(uint32_t ui32Config,
                                   uint32_t ui32SysClock);
extern void SysCtlResetBehaviorSet(uint32_t ui32Behavior);
extern uint32_t SysCtlResetBehaviorGet(void);
extern void SysCtlClockOutConfig(uint32_t ui32Config, uint32_t ui32Div);
extern void SysCtlAltClkConfig(uint32_t ui32Config);
extern uint32_t SysCtlNMIStatus(void);
extern void SysCtlNMIClear(uint32_t ui32Status);
extern void SysCtlVoltageEventConfig(uint32_t ui32Config);
extern uint32_t SysCtlVoltageEventStatus(void);
extern void SysCtlVoltageEventClear(uint32_t ui32Status);
extern _Bool SysCtlVCOGet(uint32_t ui32Crystal, uint32_t *pui32VCOFrequency);










#line 58 "driverlib\\hibernate.c"
















































static void
_HibernateWriteComplete(void)
{
    
    
    
    while(!((*((volatile uint32_t *)(0x400FC010))) & 0x80000000))
    {
    }
}





















void
HibernateEnableExpClk(uint32_t ui32HibClk)
{
    
    
    
    (*((volatile uint32_t *)(0x400FC010))) |= 0x00000040;

    
    
    
    _HibernateWriteComplete();
}











void
HibernateDisable(void)
{
    
    
    
    (*((volatile uint32_t *)(0x400FC010))) &= ~0x00000040;

    
    
    
    _HibernateWriteComplete();
}




















































void
HibernateClockConfig(uint32_t ui32Config)
{
    uint32_t ui32HIBCtl;

    ;


    ui32HIBCtl = (*((volatile uint32_t *)(0x400FC010)));

    
    
    
    ui32HIBCtl &= ~(0x00020000 | 0x00000000 |
                    0x00080000 | 0x00010000);

    
    
    
    ui32HIBCtl |= ui32Config & (0x00020000 |
                                0x00000000 |
                                0x00080000 |
                                0x00010000);

    
    
    
    
    if(ui32Config & 0x00080000)
    {
        ui32HIBCtl |= 0x00000040;
    }

    
    
    
    (*((volatile uint32_t *)(0x400FC010))) = ui32HIBCtl;

    
    
    
    _HibernateWriteComplete();

    
    
    
    
    if((((*((volatile uint32_t *)(0x400FE000))) & (0x70000000 | 0x00FF0000)) == (0x10000000 | 0x000A0000)))
    {
            (*((volatile uint32_t *)(0x400FCFC8))) = ui32Config & (0x00000001);
    }
}













void
HibernateRTCEnable(void)
{
    
    
    
    (*((volatile uint32_t *)(0x400FC010))) |= 0x00000001;

    
    
    
    _HibernateWriteComplete();
}












void
HibernateRTCDisable(void)
{
    
    
    
    (*((volatile uint32_t *)(0x400FC010))) &= ~0x00000001;

    
    
    
    _HibernateWriteComplete();
}




















void
HibernateBatCheckStart(void)
{
    
    
    
    (*((volatile uint32_t *)(0x400FC010))) |= 0x00000400;

    
    
    
    _HibernateWriteComplete();
}

















uint32_t
HibernateBatCheckDone(void)
{
    
    
    
    return((*((volatile uint32_t *)(0x400FC010))) & 0x00000400);
}

































void
HibernateWakeSet(uint32_t ui32WakeFlags)
{
    
    
    
    ;



    
    
    
    (*((volatile uint32_t *)(0x400FC010))) = (ui32WakeFlags | ((*((volatile uint32_t *)(0x400FC010))) &
                                       ~(0x00000010 |
                                         0x00000008 |
                                         0x00000200)));

    
    
    
    _HibernateWriteComplete();

    
    
    
    if((((*((volatile uint32_t *)(0x400FE000))) & (0x70000000 | 0x00FF0000)) == (0x10000000 | 0x000A0000)))
    {
        
        
        
        
        
        if((ui32WakeFlags & (0x00100010 | 0x00000010)) &&
           (((*((volatile uint32_t *)(0x400FC010))) & 0x00000100) == 0))
        {
            
            
            
            
            (*((volatile uint32_t *)(0x400FC010))) |= 0x00000100;

            
            
            
            _HibernateWriteComplete();
        }

        
        
        
        (*((volatile uint32_t *)(0x400FC02C))) = (ui32WakeFlags >> 16) | 0x00000001;

        
        
        
        while(((*((volatile uint32_t *)(0x400FC02C))) & 0x80000000) == 0)
        {
        }

        
        
        
        (*((volatile uint32_t *)(0x400FC02C))) &= ~0x00000001;
    }
}


























uint32_t
HibernateWakeGet(void)
{
    uint32_t ui32Ctrl;

    
    
    
    
    if((((*((volatile uint32_t *)(0x400FE000))) & (0x70000000 | 0x00FF0000)) == (0x10000000 | 0x000A0000)))
    {
        ui32Ctrl = (*((volatile uint32_t *)(0x400FC010)));
        return((ui32Ctrl & (0x00000010 | 0x00000008 |
                            0x00000200)) |
               (((*((volatile uint32_t *)(0x400FC02C))) << 16) & (0x00100010 |
                                         0x00000010)));
    }
    else
    {
        return((*((volatile uint32_t *)(0x400FC010))) & (0x00000010 | 0x00000008 |
                                 0x00000200));
    }
}




































void
HibernateLowBatSet(uint32_t ui32LowBatFlags)
{
    
    
    
    ;


    
    
    
    
    (*((volatile uint32_t *)(0x400FC010))) = (ui32LowBatFlags |
                      ((*((volatile uint32_t *)(0x400FC010))) & ~(0x00006000 |
                                          0x000000A0)));

    
    
    
    _HibernateWriteComplete();
}














uint32_t
HibernateLowBatGet(void)
{
    
    
    
    
    return((*((volatile uint32_t *)(0x400FC010))) & (0x00006000 | 0x000000A0));
}














void
HibernateRTCSet(uint32_t ui32RTCValue)
{
    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0xA3359554;
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC00C))) = ui32RTCValue;

    
    
    
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0;
    _HibernateWriteComplete();
}










uint32_t
HibernateRTCGet(void)
{
    
    
    
    return((*((volatile uint32_t *)(0x400FC000))));
}
















void
HibernateRTCMatchSet(uint32_t ui32Match, uint32_t ui32Value)
{
    ;

    
    
    
    (*((volatile uint32_t *)(0x400FC004))) = ui32Value;

    
    
    
    _HibernateWriteComplete();
}














uint32_t
HibernateRTCMatchGet(uint32_t ui32Match)
{
    ;

    
    
    
    return((*((volatile uint32_t *)(0x400FC004))));
}


















void
HibernateRTCSSMatchSet(uint32_t ui32Match, uint32_t ui32Value)
{
    ;

    
    
    
    (*((volatile uint32_t *)(0x400FC028))) = ui32Value << 16;

    
    
    
    _HibernateWriteComplete();
}















uint32_t
HibernateRTCSSMatchGet(uint32_t ui32Match)
{
    ;

    
    
    
    return((*((volatile uint32_t *)(0x400FC028))) >> 16);
}













uint32_t
HibernateRTCSSGet(void)
{
    
    
    
    return((*((volatile uint32_t *)(0x400FC028))) & 0x00007FFF);
}



















void
HibernateRTCTrimSet(uint32_t ui32Trim)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(0x400FC024))) = ui32Trim;

    
    
    
    _HibernateWriteComplete();
}












uint32_t
HibernateRTCTrimGet(void)
{
    
    
    
    return((*((volatile uint32_t *)(0x400FC024))));
}



















void
HibernateDataSet(uint32_t *pui32Data, uint32_t ui32Count)
{
    uint32_t ui32Idx;

    
    
    
    ;
    ;

    
    
    
    for(ui32Idx = 0; ui32Idx < ui32Count; ui32Idx++)
    {
        
        
        
        (*((volatile uint32_t *)(0x400FC030 + (ui32Idx * 4)))) = pui32Data[ui32Idx];

        
        
        
        _HibernateWriteComplete();
    }
}



















void
HibernateDataGet(uint32_t *pui32Data, uint32_t ui32Count)
{
    uint32_t ui32Idx;

    
    
    
    ;
    ;

    
    
    
    for(ui32Idx = 0; ui32Idx < ui32Count; ui32Idx++)
    {
        
        
        
        
        pui32Data[ui32Idx] = (*((volatile uint32_t *)(0x400FC030 + (ui32Idx * 4))));
    }
}




































void
HibernateRequest(void)
{
    
    
    
    (*((volatile uint32_t *)(0x400FC010))) |= 0x00000002;

    
    
    
    _HibernateWriteComplete();
}





























void
HibernateIntEnable(uint32_t ui32IntFlags)
{
    
    
    
    ;






    
    
    
    (*((volatile uint32_t *)(0x400FC014))) |= ui32IntFlags;

    
    
    
    _HibernateWriteComplete();
}
















void
HibernateIntDisable(uint32_t ui32IntFlags)
{
    
    
    
    ;






    
    
    
    (*((volatile uint32_t *)(0x400FC014))) &= ~ui32IntFlags;

    
    
    
    _HibernateWriteComplete();
}











static uint32_t
_HibernateIntNumberGet(void)
{
    uint32_t ui32Int;

    
    
    
    if((((*((volatile uint32_t *)(0x400FE000))) & (0x70000000 | 0x00FF0000)) == (0x10000000 | 0x000A0000)))
    {
        ui32Int = 57;
    }
    else
    {
        ui32Int = 59;
    }

    return(ui32Int);
}



















void
HibernateIntRegister(void (*pfnHandler)(void))
{
    uint32_t ui32Int;

    
    
    
    ui32Int = _HibernateIntNumberGet();

    ;

    
    
    
    IntRegister(ui32Int, pfnHandler);

    
    
    
    IntEnable(ui32Int);
}















void
HibernateIntUnregister(void)
{
    uint32_t ui32Int;

    
    
    
    ui32Int = _HibernateIntNumberGet();

    ;

    
    
    
    IntDisable(ui32Int);

    
    
    
    IntUnregister(ui32Int);
}




















uint32_t
HibernateIntStatus(_Bool bMasked)
{
    
    
    
    if(bMasked == 1)
    {
        return((*((volatile uint32_t *)(0x400FC01C))));
    }
    else
    {
        return((*((volatile uint32_t *)(0x400FC018))));
    }
}


























void
HibernateIntClear(uint32_t ui32IntFlags)
{
    
    
    
    ;






    
    
    
    (*((volatile uint32_t *)(0x400FC020))) |= ui32IntFlags;

    
    
    
    _HibernateWriteComplete();
}






















uint32_t
HibernateIsActive(void)
{
    
    
    
    return((*((volatile uint32_t *)(0x400FC010))) & 0x00000040 ? 1 : 0);
}




















void
HibernateGPIORetentionEnable(void)
{
    
    
    
    (*((volatile uint32_t *)(0x400FC010))) |= 0x00000100 | 0x40000000;

    
    
    
    _HibernateWriteComplete();
}


















void
HibernateGPIORetentionDisable(void)
{
    
    
    
    
    (*((volatile uint32_t *)(0x400FC010))) &= ~(0x40000000 | 0x00000100);

    
    
    
    _HibernateWriteComplete();
}
















_Bool
HibernateGPIORetentionGet(void)
{
    
    
    
    if(((*((volatile uint32_t *)(0x400FC010))) & (0x40000000 | 0x00000100)) ==
       (0x40000000 | 0x00000100))
    {
        return(1);
    }
    return(0);
}






































void
HibernateCounterMode(uint32_t ui32Config)
{
    
    
    
    (*((volatile uint32_t *)(0x400FC300))) = ui32Config;

    
    
    
    _HibernateWriteComplete();
}






static void
_HibernateCalendarSet(uint32_t ui32Reg, struct tm *psTime)
{
    uint32_t ui32Time, ui32Date;

    ;

    
    
    
    ui32Time = (((psTime->tm_min << 8) & 0x00003F00) |
                ((psTime->tm_sec << 0) & 0x0000003F));

    
    
    
    if((*((volatile uint32_t *)(0x400FC300))) & 0x00000004)
    {
        ui32Time |= (psTime->tm_hour << 16);

        
        
        
        if((ui32Reg == 0x400FC330) && (psTime->tm_hour == 0xFF) )
        {
            
            
            
            ui32Time &= ~0x00400000;
        }
    }
    else
    {
        
        
        
        
        
        if(psTime->tm_hour == 0xFF)
        {
            
            
            
            ui32Time |= 0x001F0000;
        }
        else if(psTime->tm_hour >= 12)
        {
            
            
            
            ui32Time |= (((psTime->tm_hour - 12) << 16) |
                         0x00400000);
        }
        else
        {
            
            
            
            ui32Time |= (psTime->tm_hour << 16);
        }
    }

    
    
    
    if(ui32Reg == 0x400FC310)
    {
        
        
        
        
        ui32Date = ((psTime->tm_mday << 0) |
                    ((psTime->tm_mon + 1) << 8) |
                    (psTime->tm_wday << 24) |
                    ((psTime->tm_year - 100) << 16));
    }
    else
    {
        
        
        
        
        if(psTime->tm_mday == 0xFF)
        {
            
            
            
            ui32Date = 0 << 0x0000001F;
        }
        else
        {
            ui32Date = (psTime->tm_mday << 0);
        }
    }

    
    
    
    if(ui32Reg == 0x400FC310)
    {
        
        
        
        (*((volatile uint32_t *)(0x400FC360))) = 0xA3359554;
        _HibernateWriteComplete();
    }

    
    
    
    if(ui32Reg == 0x400FC310)
    {
        (*((volatile uint32_t *)(0x400FC320))) = ui32Time;
        _HibernateWriteComplete();
        (*((volatile uint32_t *)(0x400FC324))) = ui32Date;
        _HibernateWriteComplete();
    }
    else
    {
        (*((volatile uint32_t *)(0x400FC330))) = ui32Time;
        _HibernateWriteComplete();
        (*((volatile uint32_t *)(0x400FC334))) = ui32Date;
        _HibernateWriteComplete();
    }

    
    
    
    if(ui32Reg == 0x400FC310)
    {
        
        
        
        (*((volatile uint32_t *)(0x400FC360))) = 0;
        _HibernateWriteComplete();
    }
}




























void
HibernateCalendarSet(struct tm *psTime)
{
    
    
    
    _HibernateCalendarSet(0x400FC310, psTime);
}





























int
HibernateCalendarGet(struct tm *psTime)
{
    uint32_t ui32Date, ui32Time;

    ;

    
    
    
    
    do
    {
        ui32Date = (*((volatile uint32_t *)(0x400FC314)));
    }
    while((ui32Date & 0x80000000) == 0);

    
    
    
    
    do
    {
        ui32Time = (*((volatile uint32_t *)(0x400FC310)));
    }
    while((ui32Time & 0x80000000) == 0);

    
    
    
    
    
    if(ui32Date != (*((volatile uint32_t *)(0x400FC314))))
    {
        return(-1);
    }

    
    
    
    
    
    psTime->tm_min = (ui32Time & 0x00003F00) >> 8;
    psTime->tm_sec = (ui32Time & 0x0000003F) >> 0;
    psTime->tm_mon = (((ui32Date & 0x00000F00) >> 8) - 1);
    psTime->tm_mday = (ui32Date & 0x0000001F) >> 0;
    psTime->tm_wday = (ui32Date & 0x07000000) >> 24;
    psTime->tm_year = ((ui32Date & 0x007F0000) >> 16) + 100;
    psTime->tm_hour = (ui32Time & 0x001F0000) >> 16;

    
    
    
    if((((*((volatile uint32_t *)(0x400FC300))) & 0x00000004) == 0) &&
       (ui32Time & 0x00400000))
    {
        psTime->tm_hour += 12;
    }

    return(0);
}




























void
HibernateCalendarMatchSet(uint32_t ui32Index, struct tm *psTime)
{
    
    
    
    _HibernateCalendarSet(0x400FC330, psTime);
}



























void
HibernateCalendarMatchGet(uint32_t ui32Index, struct tm *psTime)
{
    uint32_t ui32Date, ui32Time;

    ;

    
    
    
    ui32Date = (*((volatile uint32_t *)(0x400FC334)));

    
    
    
    ui32Time = (*((volatile uint32_t *)(0x400FC330)));

    
    
    
    if((ui32Time & 0x00003F00) == 0x00003F00)
    {
        
        
        
        psTime->tm_min = 0xFF;
    }
    else
    {
        psTime->tm_min = (ui32Time & 0x00003F00) >> 8;
    }

    if((ui32Time & 0x0000003F) == 0x0000003F)
    {
        
        
        
        psTime->tm_sec = 0xFF;
    }
    else
    {
        psTime->tm_sec = (ui32Time & 0x0000003F) >> 0;
    }

    if((ui32Time & 0x001F0000) == 0x001F0000)
    {
        
        
        
        psTime->tm_hour = 0xFF;
    }
    else
    {
        psTime->tm_hour = (ui32Time & 0x001F0000) >> 16;
    }

    if((ui32Date & 0x0000001F) == 0)
    {
        
        
        
        psTime->tm_mday = 0xFF;
    }
    else
    {
        psTime->tm_mday = (ui32Date & 0x0000001F) >> 0;
    }

    
    
    
    if((((*((volatile uint32_t *)(0x400FC300))) & 0x00000004) == 0) &&
       (ui32Time & 0x00400000))
    {
        psTime->tm_hour += 12;
    }
}

































void
HibernateTamperEventsConfig(uint32_t ui32Config)
{
    uint32_t ui32Temp;

    
    
    
    ui32Temp = ((*((volatile uint32_t *)(0x400FC400))) & ~0x00000300);

    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0xA3359554;
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC400))) = (ui32Temp | ui32Config);

    
    
    
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0;
    _HibernateWriteComplete();
}

















void
HibernateTamperEnable(void)
{
    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0xA3359554;
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC400))) |= 0x00000001;

    
    
    
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0;
    _HibernateWriteComplete();
}

















void
HibernateTamperDisable(void)
{
    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0xA3359554;
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC400))) &= ~0x00000001;

    
    
    
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0;
    _HibernateWriteComplete();
}



































void
HibernateTamperIOEnable(uint32_t ui32Input, uint32_t ui32Config)
{
    uint32_t ui32Temp, ui32Mask;

    
    
    
    ;

    
    
    
    ui32Temp = (*((volatile uint32_t *)(0x400FC410)));

    
    
    
    ui32Mask = (ui32Temp & (~((0x00000008 | 0x00000004 |
                               0x00000002 | 0x00000001) <<
                              (ui32Input << 3))));

    
    
    
    ui32Temp = (ui32Mask | ((ui32Config | 0x00000001) << (ui32Input << 3)));

    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0xA3359554;
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC410))) = ui32Temp;

    
    
    
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0;
    _HibernateWriteComplete();
}






















void
HibernateTamperIODisable(uint32_t ui32Input)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0xA3359554;
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC410))) &= ((~0x00000001) << (ui32Input << 3));

    
    
    
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0;
    _HibernateWriteComplete();
}




















void
HibernateTamperEventsClear(void)
{
    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0xA3359554;
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC400))) |= 0x00000010;

    
    
    
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0;
    _HibernateWriteComplete();
}

























void
HibernateTamperEventsClearNoLock(void)
{
    
    
    
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC400))) |= 0x00000010;

}
















void
HibernateTamperUnLock(void)
{
    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0xA3359554;
    _HibernateWriteComplete();
}
















void
HibernateTamperLock(void)
{
    
    
    
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0;
    _HibernateWriteComplete();
}



































uint32_t
HibernateTamperStatusGet(void)
{
    uint32_t ui32Status, ui32Reg;

    
    
    
    ui32Reg = (*((volatile uint32_t *)(0x400FC404)));

    
    
    
    ui32Status = (ui32Reg & (0x00000002 | 0x00000001));
    ui32Status |= ((ui32Reg & 0x00000002) ? 0 :
                   0x00000008);
    ui32Status |= ((ui32Reg & 0x00000001) ? 0 :
                   0x00000004);

    
    
    
    ui32Status |= ((ui32Reg & 0x0000000C) << 3);

    
    
    
    
    if((ui32Reg & 0x0000000C) == 0)
    {
        ui32Status |= 0x00000010;
    }

    
    
    
    return(ui32Status);
}

























































_Bool
HibernateTamperEventsGet(uint32_t ui32Index, uint32_t *pui32RTC,
                         uint32_t *pui32Event)
{
    uint32_t ui32Reg;

    
    
    
    ;
    ;
    ;

    
    
    
    ui32Reg = (*((volatile uint32_t *)(0x400FC4E0 + ((ui32Index << 3) + 4))));
    if(ui32Reg == 0)
    {
        
        
        
        return(0);
    }

    
    
    
    *pui32Event = ui32Reg;

    
    
    
    *pui32RTC = (*((volatile uint32_t *)(0x400FC4E0 + (ui32Index << 3))));

    
    
    
    
    if(((*((volatile uint32_t *)(0x400FC300))) & (0x00000001 | 0x00000004)) ==
       (0x00000001 | 0x00000004))
    {
        if((*((volatile uint32_t *)(0x400FC310))) & 0x00400000)
        {
            
            
            
            ui32Reg = ((*pui32RTC & 0X0001f000) + (12<<12)) & 0X0001f000;
            *pui32RTC &= ~0X0001f000;
            *pui32RTC |= ui32Reg;
        }
    }

    
    
    
    return(1);
}


















void
HibernateTamperExtOscRecover(void)
{
    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0xA3359554;
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC404))) |= 0x00000001;

    
    
    
    _HibernateWriteComplete();

    
    
    
    (*((volatile uint32_t *)(0x400FC360))) = 0;
    _HibernateWriteComplete();
}


















_Bool
HibernateTamperExtOscValid(void)
{
    if(HibernateTamperStatusGet() & (0x00000008 |
                                     0x00000004))
    {
        return(1);
    }

    return(0);
}







