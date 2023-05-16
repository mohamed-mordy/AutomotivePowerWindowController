#line 1 "driverlib\\comp.c"














































#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 48 "driverlib\\comp.c"
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






 
#line 49 "driverlib\\comp.c"
#line 1 "./inc/hw_comp.h"
















































                                            

                                            

                                            

                                            
#line 63 "./inc/hw_comp.h"
                                            







                                            

                                            

                                            










































#line 136 "./inc/hw_comp.h"













#line 167 "./inc/hw_comp.h"













#line 198 "./inc/hw_comp.h"






#line 210 "./inc/hw_comp.h"

#line 50 "driverlib\\comp.c"
#line 1 "./inc/hw_ints.h"
















































#line 58 "./inc/hw_ints.h"






#line 94 "./inc/hw_ints.h"
                                            
#line 170 "./inc/hw_ints.h"






#line 244 "./inc/hw_ints.h"
                                            
#line 283 "./inc/hw_ints.h"






#line 339 "./inc/hw_ints.h"













#line 475 "./inc/hw_ints.h"
















#line 51 "driverlib\\comp.c"
#line 1 "./inc/hw_memmap.h"
















































#line 116 "./inc/hw_memmap.h"
                                            

                                            

                                            
#line 141 "./inc/hw_memmap.h"
                                            

                                            
#line 150 "./inc/hw_memmap.h"

#line 52 "driverlib\\comp.c"
#line 1 "./inc/hw_types.h"















































#line 63 "./inc/hw_types.h"




















































































#line 53 "driverlib\\comp.c"
#line 1 "./driverlib/comp.h"





























































#line 78 "./driverlib/comp.h"






#line 113 "./driverlib/comp.h"






extern void ComparatorConfigure(uint32_t ui32Base, uint32_t ui32Comp,
                                uint32_t ui32Config);
extern void ComparatorRefSet(uint32_t ui32Base, uint32_t ui32Ref);
extern _Bool ComparatorValueGet(uint32_t ui32Base, uint32_t ui32Comp);
extern void ComparatorIntRegister(uint32_t ui32Base, uint32_t ui32Comp,
                                  void (*pfnHandler)(void));
extern void ComparatorIntUnregister(uint32_t ui32Base, uint32_t ui32Comp);
extern void ComparatorIntEnable(uint32_t ui32Base, uint32_t ui32Comp);
extern void ComparatorIntDisable(uint32_t ui32Base, uint32_t ui32Comp);
extern _Bool ComparatorIntStatus(uint32_t ui32Base, uint32_t ui32Comp,
                                _Bool bMasked);
extern void ComparatorIntClear(uint32_t ui32Base, uint32_t ui32Comp);










#line 54 "driverlib\\comp.c"
#line 1 "./driverlib/debug.h"
















































extern void __error__(char *pcFilename, uint32_t ui32Line);







#line 69 "./driverlib/debug.h"

#line 55 "driverlib\\comp.c"
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










#line 56 "driverlib\\comp.c"
























































void
ComparatorConfigure(uint32_t ui32Base, uint32_t ui32Comp, uint32_t ui32Config)
{
    
    
    
    ;
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + (ui32Comp * 0x20) + 0x00000024))) = ui32Config;
}












































void
ComparatorRefSet(uint32_t ui32Base, uint32_t ui32Ref)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000010))) = ui32Ref;
}














_Bool
ComparatorValueGet(uint32_t ui32Base, uint32_t ui32Comp)
{
    
    
    
    ;
    ;

    
    
    
    
    if((*((volatile uint32_t *)(ui32Base + (ui32Comp * 0x20) + 0x00000020))) &
       0x00000002)
    {
        return(1);
    }
    else
    {
        return(0);
    }
}





















void
ComparatorIntRegister(uint32_t ui32Base, uint32_t ui32Comp,
                      void (*pfnHandler)(void))
{
    
    
    
    ;
    ;

    
    
    
    IntRegister(41 + ui32Comp, pfnHandler);

    
    
    
    IntEnable(41 + ui32Comp);

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000008))) |= 1 << ui32Comp;
}


















void
ComparatorIntUnregister(uint32_t ui32Base, uint32_t ui32Comp)
{
    
    
    
    ;
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000008))) &= ~(1 << ui32Comp);

    
    
    
    IntDisable(41 + ui32Comp);

    
    
    
    IntUnregister(41 + ui32Comp);
}















void
ComparatorIntEnable(uint32_t ui32Base, uint32_t ui32Comp)
{
    
    
    
    ;
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000008))) |= 1 << ui32Comp;
}















void
ComparatorIntDisable(uint32_t ui32Base, uint32_t ui32Comp)
{
    
    
    
    ;
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000008))) &= ~(1 << ui32Comp);
}

















_Bool
ComparatorIntStatus(uint32_t ui32Base, uint32_t ui32Comp, _Bool bMasked)
{
    
    
    
    ;
    ;

    
    
    
    
    if(bMasked)
    {
        return((((*((volatile uint32_t *)(ui32Base + 0x00000000))) >> ui32Comp) & 1) ? 1 :
               0);
    }
    else
    {
        return((((*((volatile uint32_t *)(ui32Base + 0x00000004))) >> ui32Comp) & 1) ? 1 :
               0);
    }
}

























void
ComparatorIntClear(uint32_t ui32Base, uint32_t ui32Comp)
{
    
    
    
    ;
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000000))) = 1 << ui32Comp;
}







