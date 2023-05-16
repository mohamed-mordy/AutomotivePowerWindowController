#line 1 "driverlib\\lcd.c"














































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






 
#line 48 "driverlib\\lcd.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 49 "driverlib\\lcd.c"
#line 50 "driverlib\\lcd.c"
#line 1 "./inc/hw_memmap.h"
















































#line 116 "./inc/hw_memmap.h"
                                            

                                            

                                            
#line 141 "./inc/hw_memmap.h"
                                            

                                            
#line 150 "./inc/hw_memmap.h"

#line 51 "driverlib\\lcd.c"
#line 1 "./inc/hw_types.h"















































#line 63 "./inc/hw_types.h"




















































































#line 52 "driverlib\\lcd.c"
#line 1 "./inc/hw_ints.h"
















































#line 58 "./inc/hw_ints.h"






#line 94 "./inc/hw_ints.h"
                                            
#line 170 "./inc/hw_ints.h"






#line 244 "./inc/hw_ints.h"
                                            
#line 283 "./inc/hw_ints.h"






#line 339 "./inc/hw_ints.h"













#line 475 "./inc/hw_ints.h"
















#line 53 "driverlib\\lcd.c"
#line 1 "./inc/hw_lcd.h"















































#line 54 "./inc/hw_lcd.h"
                                            


                                            

                                            
#line 68 "./inc/hw_lcd.h"
                                            

                                            

                                            

                                            

                                            

                                            
































                                            


                                            

                                            

                                            

                                            

                                            
#line 134 "./inc/hw_lcd.h"









                                            





                                            
                                            
                                            
                                            
                                            
                                            
#line 162 "./inc/hw_lcd.h"































                                            





                                            
                                            
                                            
                                            
                                            
                                            
#line 212 "./inc/hw_lcd.h"
































                                            
                                            




                                            
#line 261 "./inc/hw_lcd.h"
                                            











                                            
#line 281 "./inc/hw_lcd.h"







#line 296 "./inc/hw_lcd.h"








                                            


                                            
#line 314 "./inc/hw_lcd.h"
                                            


                                            

                                            
#line 326 "./inc/hw_lcd.h"







#line 339 "./inc/hw_lcd.h"
















#line 364 "./inc/hw_lcd.h"
                                            
                                            




                                            
                                            









                                            








                                            








                                            








                                            









                                            
                                            
                                            

                                            
                                            
                                            

                                            
                                            
                                            
                                            
                                            
                                            
                                            



                                            
                                            
                                            
                                            
                                            
                                            


                                            
                                            


                                            
                                            
                                            
                                            
                                            
                                            
                                            







                                            

                                            

                                            

                                            

                                            

                                            


                                            
                                            
                                            







                                            

                                            

                                            

                                            

                                            

                                            


                                            
                                            
                                            







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            
                                            
                                            







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            
                                            
                                            
















                                            

                                            

                                            

                                            
                                            
                                            

#line 54 "driverlib\\lcd.c"
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










#line 55 "driverlib\\lcd.c"
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










#line 56 "driverlib\\lcd.c"
#line 1 "./driverlib/lcd.h"













































































































typedef struct
{
    
    
    
    
    
    
    uint8_t ui8WSSetup;

    
    
    
    
    
    uint8_t ui8WSDuration;

    
    
    
    
    
    
    uint8_t ui8WSHold;

    
    
    
    
    
    
    uint8_t ui8RSSetup;

    
    
    
    
    
    uint8_t ui8RSDuration;

    
    
    
    
    
    
    uint8_t ui8RSHold;

    
    
    
    
    
    
    uint8_t ui8DelayCycles;
}
tLCDIDDTiming;





#line 194 "./driverlib/lcd.h"





typedef struct
{
    
    
    
    
    
    uint32_t ui32Flags;

    
    
    
    
    uint16_t ui16PanelWidth;

    
    
    
    
    uint16_t ui16PanelHeight;

    
    
    
    
    uint16_t ui16HFrontPorch;

    
    
    
    
    uint16_t ui16HBackPorch;

    
    
    
    
    uint16_t ui16HSyncWidth;

    
    
    
    
    uint8_t ui8VFrontPorch;

    
    
    
    
    
    uint8_t ui8VBackPorch;

    
    
    
    
    
    
    
    
    
    
    
    uint8_t ui8VSyncWidth;

    
    
    
    
    
    
    uint8_t ui8ACBiasLineCount;
}
tLCDRasterTiming;

















#line 303 "./driverlib/lcd.h"











#line 341 "./driverlib/lcd.h"








#line 358 "./driverlib/lcd.h"






#line 387 "./driverlib/lcd.h"






#line 399 "./driverlib/lcd.h"































extern uint32_t LCDModeSet(uint32_t ui32Base, uint8_t ui8Mode,
                           uint32_t ui32PixClk, uint32_t ui32SysClk);
extern void LCDClockReset(uint32_t ui32Base, uint32_t ui32Clocks);
extern void LCDIDDConfigSet(uint32_t ui32Base, uint32_t ui32Config);
extern void LCDIDDTimingSet(uint32_t ui32Base, uint32_t ui32CS,
                            const tLCDIDDTiming *pTiming);
extern void LCDIDDDMADisable(uint32_t ui32Base);
extern void LCDIDDCommandWrite(uint32_t ui32Base, uint32_t ui32CS,
                               uint16_t ui16Cmd);
extern void LCDIDDDataWrite(uint32_t ui32Base, uint32_t ui32CS,
                            uint16_t ui16Data);
extern void LCDIDDIndexedWrite(uint32_t ui32Base, uint32_t ui32CS,
                               uint16_t ui16Addr, uint16_t ui16Data);
extern uint16_t LCDIDDStatusRead(uint32_t ui32Base, uint32_t ui32CS);
extern uint16_t LCDIDDDataRead(uint32_t ui32Base, uint32_t ui32CS);
extern uint16_t LCDIDDIndexedRead(uint32_t ui32Base, uint32_t ui32CS,
                                  uint16_t ui16Addr);
extern void LCDIDDDMAWrite(uint32_t ui32Base, uint32_t ui32CS,
                           const uint32_t *pui32Data, uint32_t ui32Count);
extern void LCDRasterConfigSet(uint32_t ui32Base, uint32_t ui32Config,
                               uint8_t ui8PalLoadDelay);
extern void LCDRasterTimingSet(uint32_t ui32Base,
                               const tLCDRasterTiming *pTiming);
extern void LCDRasterACBiasIntCountSet(uint32_t ui32Base, uint8_t ui8Count);
extern void LCDRasterEnable(uint32_t ui32Base);
extern _Bool LCDRasterEnabled(uint32_t ui32Base);
extern void LCDRasterDisable(uint32_t ui32Base);
extern void LCDRasterSubPanelConfigSet(uint32_t ui32Base, uint32_t ui32Flags,
                                       uint32_t ui32BottomLines,
                                       uint32_t ui32DefaultPixel);
extern void LCDRasterSubPanelEnable(uint32_t ui32Base);
extern void LCDRasterSubPanelDisable(uint32_t ui32Base);
extern void LCDDMAConfigSet(uint32_t ui32Base, uint32_t ui32Config);
extern void LCDRasterPaletteSet(uint32_t ui32Base, uint32_t ui32Type,
                                uint32_t *pui32PalAddr,
                                const uint32_t *pui32SrcColors,
                                uint32_t ui32Start,
                                uint32_t ui32Count);
extern void LCDRasterFrameBufferSet(uint32_t ui32Base, uint8_t ui8Buffer,
                                    uint32_t *pui32Addr,
                                    uint32_t ui32NumBytes);
extern void LCDIntEnable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void LCDIntDisable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern uint32_t LCDIntStatus(uint32_t ui32Base, _Bool bMasked);
extern void LCDIntClear(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void LCDIntRegister(uint32_t ui32Base, void (*pfnHandler)(void));
extern void LCDIntUnregister(uint32_t ui32Base);










#line 57 "driverlib\\lcd.c"
#line 1 "./driverlib/debug.h"
















































extern void __error__(char *pcFilename, uint32_t ui32Line);







#line 69 "./driverlib/debug.h"

#line 58 "driverlib\\lcd.c"







#line 71 "driverlib\\lcd.c"






































uint32_t
LCDModeSet(uint32_t ui32Base, uint8_t ui8Mode, uint32_t ui32PixClk,
           uint32_t ui32SysClk)
{
    uint32_t ui32Div;

    
    
    
    ;
    ;


    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x0000006C))) = (0x00000004 | 0x00000001 |
                                     0x00000002);

    
    
    
    
    
    
    ui32Div = (ui32SysClk + (ui32PixClk - 1)) / ui32PixClk;

    
    
    
    ;
    ;
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000004))) = (uint32_t)ui8Mode |
                                  (ui32Div << 8);

    
    
    
    
    
    return(ui32Div ? (ui32SysClk / ui32Div) : ui32SysClk);
}
























void
LCDClockReset(uint32_t ui32Base, uint32_t ui32Clocks)
{
    
    
    
    ;
    ;


    
    
    
    (*((volatile uint32_t *)(0x44050000 + 0x70))) = ui32Clocks;

    
    
    
    SysCtlDelay(10);

    
    
    
    (*((volatile uint32_t *)(0x44050000 + 0x70))) = 0x00000000;

    
    
    
    SysCtlDelay(10);
}















































void
LCDIDDConfigSet(uint32_t ui32Base, uint32_t ui32Config)
{
    
    
    
    ;
    ;
#line 271 "driverlib\\lcd.c"

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x0000000C))) = ui32Config;
}























void
LCDIDDTimingSet(uint32_t ui32Base, uint32_t ui32CS,
                const tLCDIDDTiming *pTiming)
{
    uint32_t ui32Val;

    
    
    
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;

    
    
    
    ui32Val =
        (((uint32_t)(pTiming->ui8WSSetup) << 27) |
         ((uint32_t)(pTiming->ui8WSDuration) << 21) |
         ((uint32_t)(pTiming->ui8WSHold) << 17) |
         ((uint32_t)(pTiming->ui8RSSetup) << 12) |
         ((uint32_t)(pTiming->ui8RSDuration) << 6) |
         ((uint32_t)(pTiming->ui8RSHold) << 2) |
         ((uint32_t)(pTiming->ui8DelayCycles - 1) << 0));

    
    
    
    if(!ui32CS)
    {
        (*((volatile uint32_t *)(ui32Base + 0x00000010))) = ui32Val;
    }
    else
    {
        (*((volatile uint32_t *)(ui32Base + 0x0000001C))) = ui32Val;
    }
}



















void
LCDIDDDMADisable(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x0000000C))) &= ~0x00000100;
}
























void
LCDIDDCommandWrite(uint32_t ui32Base, uint32_t ui32CS, uint16_t ui16Cmd)
{
    uint32_t ui32Reg;

    
    
    
    ;
    ;

    
    
    
    ui32Reg = ui32CS ? 0x00000020 : 0x00000014;

    
    
    
    (*((volatile uint32_t *)(ui32Base + ui32Reg))) = ui16Cmd;
}
























void
LCDIDDDataWrite(uint32_t ui32Base, uint32_t ui32CS, uint16_t ui16Data)
{
    uint32_t ui32Reg;

    
    
    
    ;
    ;

    
    
    
    ui32Reg = ui32CS ? 0x00000024 : 0x00000018;

    
    
    
    (*((volatile uint32_t *)(ui32Base + ui32Reg))) = ui16Data;
}

































void
LCDIDDIndexedWrite(uint32_t ui32Base, uint32_t ui32CS, uint16_t ui16Addr,
                   uint16_t ui16Data)
{
    uint32_t ui32Addr;

    
    
    
    ;
    ;

    
    
    
    ui32Addr = ui32CS ? 0x00000020 : 0x00000014;

    
    
    
    (*((volatile uint32_t *)(ui32Base + ui32Addr))) = ui16Addr;

    
    
    
    ui32Addr = ui32CS ? 0x00000024 : 0x00000018;

    
    
    
    (*((volatile uint32_t *)(ui32Base + ui32Addr))) = ui16Data;
}


























uint16_t
LCDIDDStatusRead(uint32_t ui32Base, uint32_t ui32CS)
{
    uint32_t ui32Reg;

    
    
    
    ;
    ;

    
    
    
    ui32Reg = ui32CS ? 0x00000020 : 0x00000014;

    
    
    
    return((uint16_t)(*((volatile uint32_t *)(ui32Base + ui32Reg))));
}
























uint16_t
LCDIDDDataRead(uint32_t ui32Base, uint32_t ui32CS)
{
    uint32_t ui32Reg;

    
    
    
    ;
    ;

    
    
    
    ui32Reg = ui32CS ? 0x00000024 : 0x00000018;

    
    
    
    return((uint16_t)(*((volatile uint32_t *)(ui32Base + ui32Reg))));
}































uint16_t
LCDIDDIndexedRead(uint32_t ui32Base, uint32_t ui32CS, uint16_t ui16Addr)
{
    uint32_t ui32Addr;

    
    
    
    ;
    ;

    
    
    
    ui32Addr = ui32CS ? 0x00000020 : 0x00000014;

    
    
    
    (*((volatile uint32_t *)(ui32Base + ui32Addr))) = ui16Addr;

    
    
    
    ui32Addr = ui32CS ? 0x00000024 : 0x00000018;

    
    
    
    return((uint16_t)(*((volatile uint32_t *)(ui32Base + ui32Addr))));
}



































void
LCDIDDDMAWrite(uint32_t ui32Base, uint32_t ui32CS, const uint32_t *pui32Data,
               uint32_t ui32Count)
{
    
    
    
    ;
    ;
    ;
    ;

    
    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x0000000C))) &= ~0x00000100;

    
    
    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000044))) = (uint32_t)pui32Data;
    (*((volatile uint32_t *)(ui32Base + 0x00000048))) = ((uint32_t)pui32Data +
                                        (ui32Count * 2) - 4);

    
    
    
    if(!ui32CS)
    {
        
        
        
        (*((volatile uint32_t *)(ui32Base + 0x0000000C))) &= ~0x00000200;
    }
    else
    {
        
        
        
        (*((volatile uint32_t *)(ui32Base + 0x0000000C))) |= 0x00000200;
    }

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x0000000C))) |= 0x00000100;
}











































































void
LCDRasterConfigSet(uint32_t ui32Base, uint32_t ui32Config,
                   uint8_t ui8PalLoadDelay)
{
    
    
    
    ;
    ;
#line 867 "driverlib\\lcd.c"

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000028))) = (ui32Config |
                                        ((uint32_t)ui8PalLoadDelay <<
                                         12));
}


















void
LCDRasterTimingSet(uint32_t ui32Base, const tLCDRasterTiming *pTiming)
{
    uint32_t ui32T0, ui32T1, ui32T2;

    
    
    
    ;
    ;
    ;
#line 910 "driverlib\\lcd.c"
    ;

    ;
    ;
    ;
    ;
    ;

    
    
    
    ui32T0 = ((uint32_t)((pTiming->ui16HBackPorch - 1) & 0xFF) <<
              24) |
             ((uint32_t)((pTiming->ui16HFrontPorch - 1) & 0xFF) <<
              16) |
             ((uint32_t)((pTiming->ui16HSyncWidth - 1) & 0x3F) <<
              10) |
             (((uint32_t)((pTiming->ui16PanelWidth - 1) & 0x3F0) >> 4) <<
              4) |
             (((uint32_t)((pTiming->ui16PanelWidth - 1) & 0x400) >> 10) <<
              3);
    ui32T1 = ((uint32_t)pTiming->ui8VBackPorch << 24) |
             ((uint32_t)pTiming->ui8VFrontPorch << 16) |
             ((uint32_t)((pTiming->ui8VSyncWidth - 1) & 0x3F) <<
              10) |
             ((uint32_t)(pTiming->ui16PanelHeight - 1) & 0x3FF) <<
             0;
    ui32T2 = pTiming->ui32Flags |
             ((((pTiming->ui16HSyncWidth - 1) & 0x3C0) >> 6) <<
              27) |
             ((((pTiming->ui16PanelHeight - 1) & 0x400) >> 10) <<
              26) |
             ((((pTiming->ui16HBackPorch - 1) & 0x300) >> 8) <<
              4) |
             ((((pTiming->ui16HFrontPorch - 1) & 0x300) >> 8) <<
              0) |
             (pTiming->ui8ACBiasLineCount << 8);

    
    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x0000002C))) = ui32T0;
    (*((volatile uint32_t *)(ui32Base + 0x00000030))) = ui32T1;
    (*((volatile uint32_t *)(ui32Base + 0x00000034))) = ((*((volatile uint32_t *)(ui32Base + 0x00000034))) &
                                         0x000F0000) | ui32T2;
}
















void
LCDRasterACBiasIntCountSet(uint32_t ui32Base, uint8_t ui8Count)
{
    uint32_t ui32Val;

    
    
    
    ;
    ;

    
    
    
    
    ui32Val = (*((volatile uint32_t *)(ui32Base + 0x00000034)));
    ui32Val &= ~0x000F0000;
    ui32Val |= ((ui8Count << 16) & 0x000F0000);

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000034))) = ui32Val;
}
















void
LCDRasterEnable(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    
    LCDClockReset(ui32Base, 0x00000008);

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000028))) |= 0x00000001;
}














_Bool
LCDRasterEnabled(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    return(((*((volatile uint32_t *)(ui32Base + 0x00000028))) & 0x00000001) ?
           1 : 0);
}


















void
LCDRasterDisable(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000028))) &= ~0x00000001;
}










































void
LCDRasterSubPanelConfigSet(uint32_t ui32Base, uint32_t ui32Flags,
                           uint32_t ui32BottomLines, uint32_t ui32DefaultPixel)
{
    
    
    
    ;
    ;

    ;

    
    
    
    ui32BottomLines--;

    
    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000038))) = ((*((volatile uint32_t *)(ui32Base + 0x00000038))) &
                                          0x80000000) | ui32Flags |
                                         ((ui32DefaultPixel & 0xFFFF) <<
                                          0) |
                                         ((ui32BottomLines <<
                                           16) &
                                          0x03FF0000);

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x0000003C))) =
        ((ui32DefaultPixel >> 16) & 0x000000FF) |
        (((ui32BottomLines >> 16) & 1) << 8);
}




















void
LCDRasterSubPanelEnable(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000038))) |= 0x80000000;
}
















void
LCDRasterSubPanelDisable(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000038))) &= ~0x80000000;
}





























































void
LCDDMAConfigSet(uint32_t ui32Base, uint32_t ui32Config)
{
    
    
    
    ;
    ;



    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000040))) = ui32Config;
}


























































void
LCDRasterPaletteSet(uint32_t ui32Base, uint32_t ui32Type, uint32_t *pui32Addr,
                    const uint32_t *pui32SrcColors, uint32_t ui32Start,
                    uint32_t ui32Count)
{
    uint16_t *pui16Pal;
    uint16_t *pui16Src;
    uint32_t ui32Loop;

    
    
    
    ;
    ;
    ;
    ;
    ;
    ;



    
    
    
    pui16Pal = (uint16_t *)pui32Addr;

    
    
    
    if(ui32Type & 0x80000000)
    {
        
        
        
        
        ui32Loop = 0;
        while(ui32Count)
        {
            pui16Pal[ui32Start + ui32Loop] =
                (((pui32SrcColors[ui32Loop] & 0xF0) >> 4) | ((pui32SrcColors[ui32Loop] & 0xF000) >> 8) | ((pui32SrcColors[ui32Loop] & 0xF00000) >> 12));
            ui32Loop++;
            ui32Count--;
        }
    }
    else
    {
        
        
        

        pui16Src = (uint16_t *)pui32SrcColors;
        while(ui32Count)
        {
            pui16Pal[ui32Start] = pui16Src[ui32Start];
            ui32Start++;
            ui32Count--;
        }
    }

    
    
    
    pui16Pal[0] &= ~(0x00003000 | 0x00004000);
    pui16Pal[0] |= (ui32Type & ~0x80000000);
}












































void
LCDRasterFrameBufferSet(uint32_t ui32Base, uint8_t ui8Buffer,
                        uint32_t *pui32Addr, uint32_t ui32NumBytes)
{
    
    
    
    ;
    ;
    ;
    ;

    
    
    
    if(!ui8Buffer)
    {
        
        
        
        (*((volatile uint32_t *)(ui32Base + 0x00000044))) = (uint32_t)pui32Addr;
        (*((volatile uint32_t *)(ui32Base + 0x00000048))) = (uint32_t)pui32Addr +
                                           ui32NumBytes - 4;
    }
    else
    {
        
        
        
        (*((volatile uint32_t *)(ui32Base + 0x0000004C))) = (uint32_t)pui32Addr;
        (*((volatile uint32_t *)(ui32Base + 0x00000050))) = (uint32_t)pui32Addr +
                                           ui32NumBytes - 4;
    }
}


































void
LCDIntEnable(uint32_t ui32Base, uint32_t ui32IntFlags)
{
    ;
    ;




    
    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000060))) = ui32IntFlags;
}



































void
LCDIntDisable(uint32_t ui32Base, uint32_t ui32IntFlags)
{
    ;
    ;




    
    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000064))) = ui32IntFlags;
}


































uint32_t
LCDIntStatus(uint32_t ui32Base, _Bool bMasked)
{
    ;

    
    
    
    if(bMasked)
    {
        
        
        
        return((*((volatile uint32_t *)(ui32Base + 0x0000005C))));
    }
    else
    {
        
        
        
        return((*((volatile uint32_t *)(ui32Base + 0x00000058))));
    }
}











































void
LCDIntClear(uint32_t ui32Base, uint32_t ui32IntFlags)
{
    ;
    ;




    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x0000005C))) = ui32IntFlags;
}





















void
LCDIntRegister(uint32_t ui32Base, void (*pfnHandler)(void))
{
    
    
    
    ;
    ;

    
    
    
    IntRegister(113, pfnHandler);

    
    
    
    IntEnable(113);
}



















void
LCDIntUnregister(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    IntDisable(113);

    
    
    
    IntUnregister(113);
}







