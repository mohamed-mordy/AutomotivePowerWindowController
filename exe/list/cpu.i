#line 1 "driverlib\\cpu.c"








































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






 
#line 42 "driverlib\\cpu.c"
#line 1 "./driverlib/cpu.h"


























































extern uint32_t CPUcpsid(void);
extern uint32_t CPUcpsie(void);
extern uint32_t CPUprimask(void);
extern void CPUwfi(void);
extern uint32_t CPUbasepriGet(void);
extern void CPUbasepriSet(uint32_t ui32NewBasepri);










#line 43 "driverlib\\cpu.c"







#line 93 "driverlib\\cpu.c"
__asm uint32_t
CPUcpsid(void)
{
    
    
    
    mrs     r0, PRIMASK;
    cpsid   i;
    bx      lr
}
#line 125 "driverlib\\cpu.c"







#line 173 "driverlib\\cpu.c"
__asm uint32_t
CPUprimask(void)
{
    
    
    
    mrs     r0, PRIMASK;
    bx      lr
}
#line 203 "driverlib\\cpu.c"







#line 253 "driverlib\\cpu.c"
__asm uint32_t
CPUcpsie(void)
{
    
    
    
    mrs     r0, PRIMASK;
    cpsie   i;
    bx      lr
}
#line 285 "driverlib\\cpu.c"






#line 313 "driverlib\\cpu.c"
__asm void
CPUwfi(void)
{
    
    
    
    wfi;
    bx      lr
}
#line 333 "driverlib\\cpu.c"






#line 361 "driverlib\\cpu.c"
__asm void
CPUbasepriSet(uint32_t ui32NewBasepri)
{
    
    
    
    msr     BASEPRI, r0;
    bx      lr
}
#line 381 "driverlib\\cpu.c"






#line 428 "driverlib\\cpu.c"
__asm uint32_t
CPUbasepriGet(void)
{
    
    
    
    mrs     r0, BASEPRI;
    bx      lr
}
