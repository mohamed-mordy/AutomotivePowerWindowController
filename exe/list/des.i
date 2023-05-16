#line 1 "driverlib\\des.c"














































#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 48 "driverlib\\des.c"
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






 
#line 49 "driverlib\\des.c"
#line 1 "./inc/hw_des.h"















































#line 70 "./inc/hw_des.h"























































                                            








                                            








                                            
                                            
                                            
                                            

                                            
                                            

                                            

                                            
                                            

                                            

                                            








                                            








                                            








                                            
















#line 212 "./inc/hw_des.h"
















                                            
                                            

                                            
                                            

                                            
                                            









                                            

                                            


                                            








                                            
                                            

                                            
                                            









                                            







                                            

                                            

                                            







                                            

                                            

                                            







                                            


                                            

#line 50 "driverlib\\des.c"
#line 1 "./inc/hw_ints.h"
















































#line 58 "./inc/hw_ints.h"






#line 94 "./inc/hw_ints.h"
                                            
#line 170 "./inc/hw_ints.h"






#line 244 "./inc/hw_ints.h"
                                            
#line 283 "./inc/hw_ints.h"






#line 339 "./inc/hw_ints.h"













#line 475 "./inc/hw_ints.h"
















#line 51 "driverlib\\des.c"
#line 1 "./inc/hw_memmap.h"
















































#line 116 "./inc/hw_memmap.h"
                                            

                                            

                                            
#line 141 "./inc/hw_memmap.h"
                                            

                                            
#line 150 "./inc/hw_memmap.h"

#line 52 "driverlib\\des.c"
#line 1 "./inc/hw_types.h"















































#line 63 "./inc/hw_types.h"




















































































#line 53 "driverlib\\des.c"
#line 1 "./driverlib/debug.h"
















































extern void __error__(char *pcFilename, uint32_t ui32Line);







#line 69 "./driverlib/debug.h"

#line 54 "driverlib\\des.c"
#line 1 "./driverlib/des.h"
























































































#line 95 "./driverlib/des.h"
















extern void DESConfigSet(uint32_t ui32Base, uint32_t ui32Config);
extern void DESDataRead(uint32_t ui32Base, uint32_t *pui32Dest);
extern _Bool DESDataReadNonBlocking(uint32_t ui32Base, uint32_t *pui32Dest);
extern _Bool DESDataProcess(uint32_t ui32Base, uint32_t *pui32Src,
                           uint32_t *pui32Dest, uint32_t ui32Length);
extern void DESDataWrite(uint32_t ui32Base, uint32_t *pui32Src);
extern _Bool DESDataWriteNonBlocking(uint32_t ui32Base, uint32_t *pui32Src);
extern void DESDMADisable(uint32_t ui32Base, uint32_t ui32Flags);
extern void DESDMAEnable(uint32_t ui32Base, uint32_t ui32Flags);
extern void DESIntClear(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void DESIntDisable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void DESIntEnable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void DESIntRegister(uint32_t ui32Base, void (*pfnHandler)(void));
extern uint32_t DESIntStatus(uint32_t ui32Base, _Bool bMasked);
extern void DESIntUnregister(uint32_t ui32Base);
extern _Bool DESIVSet(uint32_t ui32Base, uint32_t *pui32IVdata);
extern void DESKeySet(uint32_t ui32Base, uint32_t *pui32Key);
extern void DESLengthSet(uint32_t ui32Base, uint32_t ui32Length);
extern void DESReset(uint32_t ui32Base);










#line 55 "driverlib\\des.c"
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










#line 56 "driverlib\\des.c"












void
DESReset(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000034))) |= 0x00000002;

    
    
    
    while(((*((volatile uint32_t *)(ui32Base + 0x00000038))) &
           0x00000001) == 0)
    {
    }
}



































void
DESConfigSet(uint32_t ui32Base, uint32_t ui32Config)
{
    
    
    
    ;

    
    
    
    ui32Config |= ((*((volatile uint32_t *)(ui32Base + 0x00000020))) & 0x80000000);

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000020))) = ui32Config;
}
















void
DESKeySet(uint32_t ui32Base, uint32_t *pui32Key)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000010))) = pui32Key[0];
    (*((volatile uint32_t *)(ui32Base + 0x00000014))) = pui32Key[1];

    
    
    
    
    if((*((volatile uint32_t *)(ui32Base + 0x00000020))) & 0x00000008)
    {
        (*((volatile uint32_t *)(ui32Base + 0x00000008))) = pui32Key[2];
        (*((volatile uint32_t *)(ui32Base + 0x0000000C))) = pui32Key[3];
        (*((volatile uint32_t *)(ui32Base + 0x00000000))) = pui32Key[4];
        (*((volatile uint32_t *)(ui32Base + 0x00000004))) = pui32Key[5];
    }
}

















_Bool
DESIVSet(uint32_t ui32Base, uint32_t *pui32IVdata)
{
    
    
    
    ;

    
    
    
    
    if(((*((volatile uint32_t *)(ui32Base + 0x00000020))) & 0x80000000) == 0)
    {
        return(0);
    }

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000018))) = pui32IVdata[0];
    (*((volatile uint32_t *)(ui32Base + 0x0000001C))) = pui32IVdata[1];

    
    
    
    return(1);
}

















void
DESLengthSet(uint32_t ui32Base, uint32_t ui32Length)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000024))) = ui32Length;
}














_Bool
DESDataReadNonBlocking(uint32_t ui32Base, uint32_t *pui32Dest)
{
    
    
    
    ;

    
    
    
    if((0x00000001 & ((*((volatile uint32_t *)(ui32Base + 0x00000020))))) == 0)
    {
        return(0);
    }

    
    
    
    pui32Dest[0] = (*((volatile uint32_t *)(0x44038000 + 0x00000028)));
    pui32Dest[1] = (*((volatile uint32_t *)(0x44038000 + 0x0000002C)));

    
    
    
    return(1);
}















void
DESDataRead(uint32_t ui32Base, uint32_t *pui32Dest)
{
    
    
    
    ;

    
    
    
    while(((*((volatile uint32_t *)(ui32Base + 0x00000020))) & 0x00000001) == 0)
    {
    }

    
    
    
    pui32Dest[0] = (*((volatile uint32_t *)(0x44038000 + 0x00000028)));
    pui32Dest[1] = (*((volatile uint32_t *)(0x44038000 + 0x0000002C)));
}














_Bool
DESDataWriteNonBlocking(uint32_t ui32Base, uint32_t *pui32Src)
{
    
    
    
    ;

    
    
    
    
    if(!(0x00000002 & ((*((volatile uint32_t *)(ui32Base + 0x00000020))))))
    {
        return(0);
    }

    
    
    
    (*((volatile uint32_t *)(0x44038000 + 0x00000028))) = pui32Src[0];
    (*((volatile uint32_t *)(0x44038000 + 0x0000002C))) = pui32Src[1];

    
    
    
    return(1);
}














void
DESDataWrite(uint32_t ui32Base, uint32_t *pui32Src)
{
    
    
    
    ;

    
    
    
    while((((*((volatile uint32_t *)(ui32Base + 0x00000020))) & 0x00000002)) == 0)
    {
    }

    
    
    
    (*((volatile uint32_t *)(0x44038000 + 0x00000028))) = pui32Src[0];
    (*((volatile uint32_t *)(0x44038000 + 0x0000002C))) = pui32Src[1];
}
























_Bool
DESDataProcess(uint32_t ui32Base, uint32_t *pui32Src, uint32_t *pui32Dest,
               uint32_t ui32Length)
{
    uint32_t ui32Count;

    
    
    
    ;
    ;

    
    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000024))) = ui32Length;

    
    
    
    for(ui32Count = 0; ui32Count < (ui32Length / 4); ui32Count += 2)
    {
        
        
        
        while((0x00000002 & ((*((volatile uint32_t *)(ui32Base + 0x00000020))))) == 0)
        {
        }

        
        
        
        DESDataWriteNonBlocking(ui32Base, pui32Src + ui32Count);

        
        
        
        while((0x00000001 & ((*((volatile uint32_t *)(ui32Base + 0x00000020))))) == 0)
        {
        }

        
        
        
        DESDataReadNonBlocking(ui32Base, pui32Dest + ui32Count);
    }

    
    
    
    return(1);
}






















uint32_t
DESIntStatus(uint32_t ui32Base, _Bool bMasked)
{
    uint32_t ui32Status, ui32Enable;

    
    
    
    ;

    
    
    
    ui32Status = (*((volatile uint32_t *)(ui32Base + 0x0000003C)));
    if(bMasked)
    {
        ui32Enable = (*((volatile uint32_t *)(ui32Base + 0x00000040)));
        return((ui32Status & ui32Enable) |
               ((*((volatile uint32_t *)(ui32Base + 0xFFFF8038))) << 16));
    }
    else
    {
        return(ui32Status | ((*((volatile uint32_t *)(ui32Base + 0xFFFF8034))) << 16));
    }
}





















void
DESIntEnable(uint32_t ui32Base, uint32_t ui32IntFlags)
{
    
    
    
    ;
    ;






    
    
    
    (*((volatile uint32_t *)(ui32Base + 0xFFFF8030))) |= (ui32IntFlags & 0x00070000) >> 16;
    (*((volatile uint32_t *)(ui32Base + 0x00000040))) |= ui32IntFlags & 0x0000ffff;
}






















void
DESIntDisable(uint32_t ui32Base, uint32_t ui32IntFlags)
{
    
    
    
    ;
    ;






    
    
    
    (*((volatile uint32_t *)(ui32Base + 0xFFFF8030))) &= ~((ui32IntFlags & 0x00070000) >> 16);
    (*((volatile uint32_t *)(ui32Base + 0x00000040))) &= ~(ui32IntFlags & 0x0000ffff);
}






















void
DESIntClear(uint32_t ui32Base, uint32_t ui32IntFlags)
{
    
    
    
    ;
    ;



    (*((volatile uint32_t *)(ui32Base + 0xFFFF803C))) = (ui32IntFlags & 0x00070000) >> 16;
}


























void
DESIntRegister(uint32_t ui32Base, void (*pfnHandler)(void))
{
    
    
    
    ;

    
    
    
    IntRegister(112, pfnHandler);

    
    
    
    IntEnable(112);
}
















void
DESIntUnregister(uint32_t ui32Base)
{
    
    
    
    ;

    
    
    
    IntDisable(112);

    
    
    
    IntUnregister(112);
}


















void
DESDMAEnable(uint32_t ui32Base, uint32_t ui32Flags)
{
    
    
    
    ;
    ;



    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000034))) |= ui32Flags;
}


















void
DESDMADisable(uint32_t ui32Base, uint32_t ui32Flags)
{
    
    
    
    ;
    ;



    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000034))) &= ~ui32Flags;
}







