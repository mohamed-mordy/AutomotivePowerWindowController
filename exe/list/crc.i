#line 1 "driverlib\\crc.c"














































#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 48 "driverlib\\crc.c"
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






 
#line 49 "driverlib\\crc.c"
#line 1 "./inc/hw_ccm.h"



























































                                            
#line 69 "./inc/hw_ccm.h"
                                            

                                            
                                            


                                            
                                            

                                            
                                            
#line 89 "./inc/hw_ccm.h"


























#line 50 "driverlib\\crc.c"
#line 1 "./inc/hw_memmap.h"
















































#line 116 "./inc/hw_memmap.h"
                                            

                                            

                                            
#line 141 "./inc/hw_memmap.h"
                                            

                                            
#line 150 "./inc/hw_memmap.h"

#line 51 "driverlib\\crc.c"
#line 1 "./inc/hw_types.h"















































#line 63 "./inc/hw_types.h"




















































































#line 52 "driverlib\\crc.c"
#line 1 "./driverlib/crc.h"



























































#line 75 "./driverlib/crc.h"










extern void CRCConfigSet(uint32_t ui32Base, uint32_t ui32CRCConfig);
extern uint32_t CRCDataProcess(uint32_t ui32Base, uint32_t *pui32DataIn,
                               uint32_t ui32DataLength, _Bool bPPResult);
extern void CRCDataWrite(uint32_t ui32Base, uint32_t ui32Data);
extern uint32_t CRCResultRead(uint32_t ui32Base, _Bool bPPResult);
extern void CRCSeedSet(uint32_t ui32Base, uint32_t ui32Seed);










#line 53 "driverlib\\crc.c"
#line 1 "./driverlib/debug.h"
















































extern void __error__(char *pcFilename, uint32_t ui32Line);







#line 69 "./driverlib/debug.h"

#line 54 "driverlib\\crc.c"











































void
CRCConfigSet(uint32_t ui32Base, uint32_t ui32CRCConfig)
{
    
    
    
    ;
    ;
#line 119 "driverlib\\crc.c"

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000400))) = ui32CRCConfig;
}

















void
CRCSeedSet(uint32_t ui32Base, uint32_t ui32Seed)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000410))) = ui32Seed;
}




















void
CRCDataWrite(uint32_t ui32Base, uint32_t ui32Data)
{
    
    
    
    ;

    
    
    
    (*((volatile uint32_t *)(ui32Base + 0x00000414))) = ui32Data;
}

















uint32_t
CRCResultRead(uint32_t ui32Base, _Bool bPPResult)
{
    
    
    
    ;

    
    
    
    
    if(bPPResult)
    {
        return((*((volatile uint32_t *)(ui32Base + 0x00000418))));
    }
    else
    {
        return((*((volatile uint32_t *)(ui32Base + 0x00000410))));
    }
}



























uint32_t
CRCDataProcess(uint32_t ui32Base, uint32_t *pui32DataIn,
               uint32_t ui32DataLength, _Bool bPPResult)
{
    uint8_t *pui8DataIn;

    
    
    
    ;

    
    
    
    if((*((volatile uint32_t *)(ui32Base + 0x00000400))) & 0x00001000)
    {
        
        
        
        
        pui8DataIn = (uint8_t *)pui32DataIn;

        
        
        
        while(ui32DataLength--)
        {
            
            
            
            (*((volatile uint32_t *)(ui32Base + 0x00000414))) = *pui8DataIn++;
        }
    }
    else
    {
        
        
        
        while(ui32DataLength--)
        {
            
            
            
            (*((volatile uint32_t *)(ui32Base + 0x00000414))) = *pui32DataIn++;
        }
    }

    
    
    
    return(CRCResultRead(ui32Base, bPPResult));
}







