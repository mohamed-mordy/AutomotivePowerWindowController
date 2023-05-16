#line 1 "driverlib\\interrupt.c"














































#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 48 "driverlib\\interrupt.c"
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






 
#line 49 "driverlib\\interrupt.c"
#line 1 "./inc/hw_ints.h"
















































#line 58 "./inc/hw_ints.h"






#line 94 "./inc/hw_ints.h"
                                            
#line 170 "./inc/hw_ints.h"






#line 244 "./inc/hw_ints.h"
                                            
#line 283 "./inc/hw_ints.h"






#line 339 "./inc/hw_ints.h"













#line 475 "./inc/hw_ints.h"
















#line 50 "driverlib\\interrupt.c"
#line 1 "./inc/hw_nvic.h"

















































                                            
#line 117 "./inc/hw_nvic.h"
                                            
#line 137 "./inc/hw_nvic.h"
                                            


                                            


                                            
#line 152 "./inc/hw_nvic.h"
                                            







                                            




                                            
















































































































































































































#line 382 "./inc/hw_nvic.h"






#line 396 "./inc/hw_nvic.h"






#line 410 "./inc/hw_nvic.h"






#line 424 "./inc/hw_nvic.h"






#line 438 "./inc/hw_nvic.h"






#line 452 "./inc/hw_nvic.h"






#line 466 "./inc/hw_nvic.h"






#line 480 "./inc/hw_nvic.h"






#line 494 "./inc/hw_nvic.h"






#line 508 "./inc/hw_nvic.h"






#line 522 "./inc/hw_nvic.h"






#line 536 "./inc/hw_nvic.h"






#line 550 "./inc/hw_nvic.h"






#line 564 "./inc/hw_nvic.h"






#line 578 "./inc/hw_nvic.h"






#line 592 "./inc/hw_nvic.h"






#line 606 "./inc/hw_nvic.h"






#line 620 "./inc/hw_nvic.h"






#line 634 "./inc/hw_nvic.h"






#line 648 "./inc/hw_nvic.h"






#line 662 "./inc/hw_nvic.h"






#line 676 "./inc/hw_nvic.h"






#line 690 "./inc/hw_nvic.h"






#line 704 "./inc/hw_nvic.h"






#line 718 "./inc/hw_nvic.h"






#line 732 "./inc/hw_nvic.h"






#line 746 "./inc/hw_nvic.h"






#line 760 "./inc/hw_nvic.h"






#line 774 "./inc/hw_nvic.h"






#line 788 "./inc/hw_nvic.h"






#line 802 "./inc/hw_nvic.h"






#line 816 "./inc/hw_nvic.h"






#line 830 "./inc/hw_nvic.h"







                                            

                                            

                                            

                                            











                                            

                                            

                                            

                                            










#line 879 "./inc/hw_nvic.h"






#line 912 "./inc/hw_nvic.h"














#line 941 "./inc/hw_nvic.h"
















                                            

                                            










#line 976 "./inc/hw_nvic.h"














#line 996 "./inc/hw_nvic.h"







#line 1018 "./inc/hw_nvic.h"







#line 1031 "./inc/hw_nvic.h"
                                            


                                            
#line 1041 "./inc/hw_nvic.h"
                                            

                                            
                                            


















































                                            




                                            

















































#line 1201 "./inc/hw_nvic.h"

















#line 1230 "./inc/hw_nvic.h"

















#line 1259 "./inc/hw_nvic.h"

















#line 1288 "./inc/hw_nvic.h"






#line 1300 "./inc/hw_nvic.h"
                                            
#line 1311 "./inc/hw_nvic.h"






#line 1340 "./inc/hw_nvic.h"














#line 1365 "./inc/hw_nvic.h"















                                            
#line 1389 "./inc/hw_nvic.h"














#line 1409 "./inc/hw_nvic.h"
                                            

                                            


#line 51 "driverlib\\interrupt.c"
#line 1 "./inc/hw_types.h"















































#line 63 "./inc/hw_types.h"




















































































#line 52 "driverlib\\interrupt.c"
#line 1 "./driverlib/cpu.h"


























































extern uint32_t CPUcpsid(void);
extern uint32_t CPUcpsie(void);
extern uint32_t CPUprimask(void);
extern void CPUwfi(void);
extern uint32_t CPUbasepriGet(void);
extern void CPUbasepriSet(uint32_t ui32NewBasepri);










#line 53 "driverlib\\interrupt.c"
#line 1 "./driverlib/debug.h"
















































extern void __error__(char *pcFilename, uint32_t ui32Line);







#line 69 "./driverlib/debug.h"

#line 54 "driverlib\\interrupt.c"
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










#line 55 "driverlib\\interrupt.c"







static const uint32_t g_pui32Priority[] =
{
    0x00000700, 0x00000600, 0x00000500,
    0x00000400, 0x00000300, 0x00000200,
    0x00000100, 0x00000000
};







static const uint32_t g_pui32Regs[] =
{
    0, 0xE000ED18, 0xE000ED1C, 0xE000ED20, 0xE000E400, 0xE000E404,
    0xE000E408, 0xE000E40C, 0xE000E410, 0xE000E414, 0xE000E418, 0xE000E41C,
    0xE000E420, 0xE000E424, 0xE000E428, 0xE000E42C, 0xE000E430, 0xE000E434,
    0xE000E438, 0xE000E43C, 0xE000E440, 0xE000E444, 0xE000E448, 0xE000E44C,
    0xE000E450, 0xE000E454, 0xE000E458, 0xE000E45C, 0xE000E460, 0xE000E464,
    0xE000E468, 0xE000E46C, 0xE000E470, 0xE000E474, 0xE000E478, 0xE000E47C,
    0xE000E480, 0xE000E484, 0xE000E488
};








static const uint32_t g_pui32EnRegs[] =
{
    0xE000E100, 0xE000E104, 0xE000E108, 0xE000E10C, 0xE000E110
};








static const uint32_t g_pui32Dii16Regs[] =
{
    0xE000E180, 0xE000E184, 0xE000E188, 0xE000E18C, 0xE000E190
};







static const uint32_t g_pui32PendRegs[] =
{
    0xE000E200, 0xE000E204, 0xE000E208, 0xE000E20C, 0xE000E210
};








static const uint32_t g_pui32UnpendRegs[] =
{
    0xE000E280, 0xE000E284, 0xE000E288, 0xE000E28C, 0xE000E290
};














static void
_IntDefaultHandler(void)
{
    
    
    
    while(1)
    {
    }
}















#line 184 "driverlib\\interrupt.c"
static __attribute__((section("vtable")))
void (*g_pfnRAMVectors[155])(void) __attribute__((aligned(1024)));
























_Bool
IntMasterEnable(void)
{
    
    
    
    return(CPUcpsie());
}






























_Bool
IntMasterDisable(void)
{
    
    
    
    return(CPUcpsid());
}




















































void
IntRegister(uint32_t ui32Interrupt, void (*pfnHandler)(void))
{
    uint32_t ui32Idx, ui32Value;

    
    
    
    ;

    
    
    
    ;

    
    
    
    if((*((volatile uint32_t *)(0xE000ED08))) != (uint32_t)g_pfnRAMVectors)
    {
        
        
        
        
        ui32Value = (*((volatile uint32_t *)(0xE000ED08)));
        for(ui32Idx = 0; ui32Idx < 155; ui32Idx++)
        {
            g_pfnRAMVectors[ui32Idx] = (void (*)(void))(*((volatile uint32_t *)((ui32Idx * 4) + ui32Value)));

        }

        
        
        
        (*((volatile uint32_t *)(0xE000ED08))) = (uint32_t)g_pfnRAMVectors;
    }

    
    
    
    g_pfnRAMVectors[ui32Interrupt] = pfnHandler;
}






























void
IntUnregister(uint32_t ui32Interrupt)
{
    
    
    
    ;

    
    
    
    g_pfnRAMVectors[ui32Interrupt] = _IntDefaultHandler;
}



























void
IntPriorityGroupingSet(uint32_t ui32Bits)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(0xE000ED0C))) = 0x05FA0000 | g_pui32Priority[ui32Bits];
}





















uint32_t
IntPriorityGroupingGet(void)
{
    uint32_t ui32Loop, ui32Value;

    
    
    
    ui32Value = (*((volatile uint32_t *)(0xE000ED0C))) & 0x00000700;

    
    
    
    for(ui32Loop = 0; ui32Loop < 8; ui32Loop++)
    {
        
        
        
        if(ui32Value == g_pui32Priority[ui32Loop])
        {
            break;
        }
    }

    
    
    
    return(ui32Loop);
}











































void
IntPrioritySet(uint32_t ui32Interrupt, uint8_t ui8Priority)
{
    uint32_t ui32Temp;

    
    
    
    ;

    
    
    
    ui32Temp = (*((volatile uint32_t *)(g_pui32Regs[ui32Interrupt >> 2])));
    ui32Temp &= ~(0xFF << (8 * (ui32Interrupt & 3)));
    ui32Temp |= ui8Priority << (8 * (ui32Interrupt & 3));
    (*((volatile uint32_t *)(g_pui32Regs[ui32Interrupt >> 2]))) = ui32Temp;
}

























int32_t
IntPriorityGet(uint32_t ui32Interrupt)
{
    
    
    
    ;

    
    
    
    return(((*((volatile uint32_t *)(g_pui32Regs[ui32Interrupt >> 2]))) >>
            (8 * (ui32Interrupt & 3))) & 0xFF);
}


























void
IntEnable(uint32_t ui32Interrupt)
{
    
    
    
    ;

    
    
    
    if(ui32Interrupt == 4)
    {
        
        
        
        (*((volatile uint32_t *)(0xE000ED24))) |= 0x00010000;
    }
    else if(ui32Interrupt == 5)
    {
        
        
        
        (*((volatile uint32_t *)(0xE000ED24))) |= 0x00020000;
    }
    else if(ui32Interrupt == 6)
    {
        
        
        
        (*((volatile uint32_t *)(0xE000ED24))) |= 0x00040000;
    }
    else if(ui32Interrupt == 15)
    {
        
        
        
        (*((volatile uint32_t *)(0xE000E010))) |= 0x00000002;
    }
    else if(ui32Interrupt >= 16)
    {
        
        
        
        (*((volatile uint32_t *)(g_pui32EnRegs[(ui32Interrupt - 16) / 32]))) =
            1 << ((ui32Interrupt - 16) & 31);
    }
}


























void
IntDisable(uint32_t ui32Interrupt)
{
    
    
    
    ;

    
    
    
    if(ui32Interrupt == 4)
    {
        
        
        
        (*((volatile uint32_t *)(0xE000ED24))) &= ~(0x00010000);
    }
    else if(ui32Interrupt == 5)
    {
        
        
        
        (*((volatile uint32_t *)(0xE000ED24))) &= ~(0x00020000);
    }
    else if(ui32Interrupt == 6)
    {
        
        
        
        (*((volatile uint32_t *)(0xE000ED24))) &= ~(0x00040000);
    }
    else if(ui32Interrupt == 15)
    {
        
        
        
        (*((volatile uint32_t *)(0xE000E010))) &= ~(0x00000002);
    }
    else if(ui32Interrupt >= 16)
    {
        
        
        
        (*((volatile uint32_t *)(g_pui32Dii16Regs[(ui32Interrupt - 16) / 32]))) =
            1 << ((ui32Interrupt - 16) & 31);
    }
}



























uint32_t
IntIsEnabled(uint32_t ui32Interrupt)
{
    uint32_t ui32Ret;

    
    
    
    ;

    
    
    
    ui32Ret = 0;

    
    
    
    if(ui32Interrupt == 4)
    {
        
        
        
        ui32Ret = (*((volatile uint32_t *)(0xE000ED24))) & 0x00010000;
    }
    else if(ui32Interrupt == 5)
    {
        
        
        
        ui32Ret = (*((volatile uint32_t *)(0xE000ED24))) & 0x00020000;
    }
    else if(ui32Interrupt == 6)
    {
        
        
        
        ui32Ret = (*((volatile uint32_t *)(0xE000ED24))) & 0x00040000;
    }
    else if(ui32Interrupt == 15)
    {
        
        
        
        ui32Ret = (*((volatile uint32_t *)(0xE000E010))) & 0x00000002;
    }
    else if(ui32Interrupt >= 16)
    {
        
        
        
        ui32Ret = (*((volatile uint32_t *)(g_pui32EnRegs[(ui32Interrupt - 16) / 32]))) &
                  (1 << ((ui32Interrupt - 16) & 31));
    }
    return(ui32Ret);
}





























void
IntPendSet(uint32_t ui32Interrupt)
{
    
    
    
    ;

    
    
    
    if(ui32Interrupt == 2)
    {
        
        
        
        (*((volatile uint32_t *)(0xE000ED04))) |= 0x80000000;
    }
    else if(ui32Interrupt == 14)
    {
        
        
        
        (*((volatile uint32_t *)(0xE000ED04))) |= 0x10000000;
    }
    else if(ui32Interrupt == 15)
    {
        
        
        
        (*((volatile uint32_t *)(0xE000ED04))) |= 0x04000000;
    }
    else if(ui32Interrupt >= 16)
    {
        
        
        
        (*((volatile uint32_t *)(g_pui32PendRegs[(ui32Interrupt - 16) / 32]))) =
            1 << ((ui32Interrupt - 16) & 31);
    }
}



























void
IntPendClear(uint32_t ui32Interrupt)
{
    
    
    
    ;

    
    
    
    if(ui32Interrupt == 14)
    {
        
        
        
        (*((volatile uint32_t *)(0xE000ED04))) |= 0x08000000;
    }
    else if(ui32Interrupt == 15)
    {
        
        
        
        (*((volatile uint32_t *)(0xE000ED04))) |= 0x02000000;
    }
    else if(ui32Interrupt >= 16)
    {
        
        
        
        (*((volatile uint32_t *)(g_pui32UnpendRegs[(ui32Interrupt - 16) / 32]))) =
            1 << ((ui32Interrupt - 16) & 31);
    }
}
































void
IntPriorityMaskSet(uint32_t ui32PriorityMask)
{
    
    
    
    CPUbasepriSet(ui32PriorityMask);
}





























uint32_t
IntPriorityMaskGet(void)
{
    
    
    
    return(CPUbasepriGet());
}



















void
IntTrigger(uint32_t ui32Interrupt)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(0xE000EF00))) = ui32Interrupt - 16;
}







