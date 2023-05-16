#line 1 "os\\queue.c"


























 

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) long long atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) long long strtoll(const char * __restrict  ,
                                  char ** __restrict  , int  )
                          __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned long long strtoull(const char * __restrict  ,
                                            char ** __restrict  , int  )
                                   __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 436 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 892 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"





 
#line 30 "os\\queue.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 31 "os\\queue.c"



 


#line 1 ".\\os\\include\\FreeRTOS.h"


























 






 
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 36 ".\\os\\include\\FreeRTOS.h"













 
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






 
#line 51 ".\\os\\include\\FreeRTOS.h"

 



 

 
#line 1 ".\\config\\FreeRTOSConfig.h"

























 















 

#line 46 ".\\config\\FreeRTOSConfig.h"

extern uint32_t SystemCoreClock;


 
#line 57 ".\\config\\FreeRTOSConfig.h"

 
#line 65 ".\\config\\FreeRTOSConfig.h"

 





 
#line 83 ".\\config\\FreeRTOSConfig.h"

 




 





 






 




   



 





 



 



 





 
#line 150 ".\\config\\FreeRTOSConfig.h"

 





 



#line 60 ".\\os\\include\\FreeRTOS.h"

 
#line 1 ".\\os\\include\\projdefs.h"


























 







 
typedef void (* TaskFunction_t)( void * );



 












 




 











 
#line 111 ".\\os\\include\\projdefs.h"


 



 




#line 63 ".\\os\\include\\FreeRTOS.h"

 
#line 1 ".\\os\\include\\portable.h"


























 



 













 
#line 1 ".\\os\\include\\deprecated_definitions.h"


























 












 











































































































































































#line 220 ".\\os\\include\\deprecated_definitions.h"

#line 229 ".\\os\\include\\deprecated_definitions.h"







#line 243 ".\\os\\include\\deprecated_definitions.h"






































#line 47 ".\\os\\include\\portable.h"




 
#line 1 ".\\os\\include\\portmacro.h"


























 





 



 









 

 
#line 57 ".\\os\\include\\portmacro.h"

    typedef uint32_t   StackType_t;
    typedef long             BaseType_t;
    typedef unsigned long    UBaseType_t;





        typedef uint32_t     TickType_t;



 


 

 




 


 

 
#line 96 ".\\os\\include\\portmacro.h"
 





 

 
    extern void vPortEnterCritical( void );
    extern void vPortExitCritical( void );

#line 114 ".\\os\\include\\portmacro.h"

 

 

        extern void vPortSuppressTicksAndSleep( TickType_t xExpectedIdleTime );


 

 






 




 



 




 



 


 


        void vPortValidateInterruptPriority( void );



 








 

    static __forceinline void vPortSetBASEPRI( uint32_t ulBASEPRI )
    {
        __asm
        {
            
 
 
            msr basepri, ulBASEPRI
 
        }
    }
 

    static __forceinline void vPortRaiseBASEPRI( void )
    {
        uint32_t ulNewBASEPRI = (5 << (8 - 3));

        __asm
        {
            
 
 
            msr basepri, ulNewBASEPRI
            dsb
            isb
 
        }
    }
 

    static __forceinline void vPortClearBASEPRIFromISR( void )
    {
        __asm
        {
            

 
 
            msr basepri, # 0
 
        }
    }
 

    static __forceinline uint32_t ulPortRaiseBASEPRI( void )
    {
        uint32_t ulReturn, ulNewBASEPRI = (5 << (8 - 3));

        __asm
        {
            
 
 
            mrs ulReturn, basepri
            msr basepri, ulNewBASEPRI
            dsb
            isb
 
        }

        return ulReturn;
    }
 

    static __forceinline BaseType_t xPortIsInsideInterrupt( void )
    {
        uint32_t ulCurrentInterrupt;
        BaseType_t xReturn;

         
        __asm
        {
 
            mrs ulCurrentInterrupt, ipsr
 
        }

        if( ulCurrentInterrupt == 0 )
        {
            xReturn = ( ( BaseType_t ) 0 );
        }
        else
        {
            xReturn = ( ( BaseType_t ) 1 );
        }

        return xReturn;
    }

 



 

#line 54 ".\\os\\include\\portable.h"


#line 71 ".\\os\\include\\portable.h"


















     



 



 

#line 1 ".\\os\\include\\mpu_wrappers.h"


























 





 
#line 209 ".\\os\\include\\mpu_wrappers.h"








#line 100 ".\\os\\include\\portable.h"






 
#line 127 ".\\os\\include\\portable.h"
        StackType_t * pxPortInitialiseStack( StackType_t * pxTopOfStack,
                                             TaskFunction_t pxCode,
                                             void * pvParameters ) ;




 
typedef struct HeapRegion
{
    uint8_t * pucStartAddress;
    size_t xSizeInBytes;
} HeapRegion_t;

 
typedef struct xHeapStats
{
    size_t xAvailableHeapSpaceInBytes;       
    size_t xSizeOfLargestFreeBlockInBytes;   
    size_t xSizeOfSmallestFreeBlockInBytes;  
    size_t xNumberOfFreeBlocks;              
    size_t xMinimumEverFreeBytesRemaining;   
    size_t xNumberOfSuccessfulAllocations;   
    size_t xNumberOfSuccessfulFrees;         
} HeapStats_t;











 
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;




 
void vPortGetHeapStats( HeapStats_t * pxHeapStats );



 
void * pvPortMalloc( size_t xSize ) ;
void vPortFree( void * pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;

#line 188 ".\\os\\include\\portable.h"




 
BaseType_t xPortStartScheduler( void ) ;





 
void vPortEndScheduler( void ) ;







 
#line 216 ".\\os\\include\\portable.h"

 



 

#line 66 ".\\os\\include\\FreeRTOS.h"

 




 








 

















































#line 140 ".\\os\\include\\FreeRTOS.h"








 


















































































































#line 269 ".\\os\\include\\FreeRTOS.h"





 
#line 281 ".\\os\\include\\FreeRTOS.h"









 


















































 



 






 






 






 




     




     






 









 








 








 








 








 















 

























































































































































































































































































































#line 772 ".\\os\\include\\FreeRTOS.h"






































































































































 






 








 



 


















#line 955 ".\\os\\include\\FreeRTOS.h"


 







 















 






 






 



#line 1020 ".\\os\\include\\FreeRTOS.h"


 






 










 





 





 





 





 


















































 













 
struct xSTATIC_LIST_ITEM
{



    TickType_t xDummy2;
    void * pvDummy3[ 4 ];



};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;

 
struct xSTATIC_MINI_LIST_ITEM
{



    TickType_t xDummy2;
    void * pvDummy3[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;

 
typedef struct xSTATIC_LIST
{



    UBaseType_t uxDummy2;
    void * pvDummy3;
    StaticMiniListItem_t xDummy4;



} StaticList_t;













 
typedef struct xSTATIC_TCB
{
    void * pxDummy1;



    StaticListItem_t xDummy3[ 2 ];
    UBaseType_t uxDummy5;
    void * pxDummy6;
    uint8_t ucDummy7[ (10) ];
#line 1198 ".\\os\\include\\FreeRTOS.h"
        UBaseType_t uxDummy10[ 2 ];


        UBaseType_t uxDummy12[ 2 ];
#line 1216 ".\\os\\include\\FreeRTOS.h"
        uint32_t ulDummy18[ 1 ];
        uint8_t ucDummy19[ 1 ];






        uint8_t ucDummy21;




} StaticTask_t;














 
typedef struct xSTATIC_QUEUE
{
    void * pvDummy1[ 3 ];

    union
    {
        void * pvDummy2;
        UBaseType_t uxDummy2;
    } u;

    StaticList_t xDummy3[ 2 ];
    UBaseType_t uxDummy4[ 3 ];
    uint8_t ucDummy5[ 2 ];






        void * pvDummy7;



        UBaseType_t uxDummy8;
        uint8_t ucDummy9;

} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;














 
typedef struct xSTATIC_EVENT_GROUP
{
    TickType_t xDummy1;
    StaticList_t xDummy2;


        UBaseType_t uxDummy3;





} StaticEventGroup_t;














 
typedef struct xSTATIC_TIMER
{
    void * pvDummy1;
    StaticListItem_t xDummy2;
    TickType_t xDummy3;
    void * pvDummy5;
    TaskFunction_t pvDummy6;

        UBaseType_t uxDummy7;

    uint8_t ucDummy8;
} StaticTimer_t;














 
typedef struct xSTATIC_STREAM_BUFFER
{
    size_t uxDummy1[ 4 ];
    void * pvDummy2[ 3 ];
    uint8_t ucDummy3;

        UBaseType_t uxDummy4;

} StaticStreamBuffer_t;

 
typedef StaticStreamBuffer_t StaticMessageBuffer_t;

 



 

#line 38 "os\\queue.c"
#line 1 ".\\os\\include\\task.h"


























 









#line 1 ".\\os\\include\\list.h"


























 



























 




































 




 



 





 

     
#line 138 ".\\os\\include\\list.h"




 
struct xLIST;
struct xLIST_ITEM
{
                
     TickType_t xItemValue;           
    struct xLIST_ITEM *  pxNext;      
    struct xLIST_ITEM *  pxPrevious;  
    void * pvOwner;                                      
    struct xLIST *  pvContainer;      
               
};
typedef struct xLIST_ITEM ListItem_t;                    

struct xMINI_LIST_ITEM
{
      
     TickType_t xItemValue;
    struct xLIST_ITEM *  pxNext;
    struct xLIST_ITEM *  pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;



 
typedef struct xLIST
{
           
    volatile UBaseType_t uxNumberOfItems;
    ListItem_t *  pxIndex;  
    MiniListItem_t xListEnd;                   
          
} List_t;







 








 








 









 








 







 







 







 








 




 





















 
#line 293 ".\\os\\include\\list.h"
















 
#line 327 ".\\os\\include\\list.h"






















 
#line 374 ".\\os\\include\\list.h"
















 










 







 






 











 
void vListInitialise( List_t * const pxList ) ;









 
void vListInitialiseItem( ListItem_t * const pxItem ) ;











 
void vListInsert( List_t * const pxList,
                  ListItem_t * const pxNewListItem ) ;



















 
void vListInsertEnd( List_t * const pxList,
                     ListItem_t * const pxNewListItem ) ;













 
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;

 



 

#line 38 ".\\os\\include\\task.h"

 



 



 







 






 










 











 
struct tskTaskControlBlock;  
typedef struct tskTaskControlBlock * TaskHandle_t;




 
typedef BaseType_t (* TaskHookFunction_t)( void * );

 
typedef enum
{
    eRunning = 0,  
    eReady,        
    eBlocked,      
    eSuspended,    
    eDeleted,      
    eInvalid       
} eTaskState;

 
typedef enum
{
    eNoAction = 0,             
    eSetBits,                  
    eIncrement,                
    eSetValueWithOverwrite,    
    eSetValueWithoutOverwrite  
} eNotifyAction;



 
typedef struct xTIME_OUT
{
    BaseType_t xOverflowCount;
    TickType_t xTimeOnEntering;
} TimeOut_t;



 
typedef struct xMEMORY_REGION
{
    void * pvBaseAddress;
    uint32_t ulLengthInBytes;
    uint32_t ulParameters;
} MemoryRegion_t;



 
typedef struct xTASK_PARAMETERS
{
    TaskFunction_t pvTaskCode;
    const char * pcName;  
    uint16_t usStackDepth;
    void * pvParameters;
    UBaseType_t uxPriority;
    StackType_t * puxStackBuffer;
    MemoryRegion_t xRegions[ 1 ];



} TaskParameters_t;


 
typedef struct xTASK_STATUS
{
    TaskHandle_t xHandle;                          
    const char * pcTaskName;                         
    UBaseType_t xTaskNumber;                       
    eTaskState eCurrentState;                      
    UBaseType_t uxCurrentPriority;                 
    UBaseType_t uxBasePriority;                    
    uint32_t ulRunTimeCounter;  
    StackType_t * pxStackBase;                     
    uint16_t usStackHighWaterMark;   
} TaskStatus_t;

 
typedef enum
{
    eAbortSleep = 0,        
    eStandardSleep,         
    eNoTasksWaitingTimeout  
} eSleepModeStatus;





 









 













 














 










 









 




 







 






























































































 

    BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
                            const char * const pcName,  
                            const uint16_t usStackDepth,
                            void * const pvParameters,
                            UBaseType_t uxPriority,
                            TaskHandle_t * const pxCreatedTask ) ;













































































































 
#line 474 ".\\os\\include\\task.h"









































































 

























































































 



















































 
void vTaskAllocateMPURegions( TaskHandle_t xTask,
                              const MemoryRegion_t * const pxRegions ) ;









































 
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;



 
















































 
void vTaskDelay( const TickType_t xTicksToDelay ) ;

































































 
BaseType_t xTaskDelayUntil( TickType_t * const pxPreviousWakeTime,
                            const TickType_t xTimeIncrement ) ;




 



































 
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;















































 
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;








 
UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;


















 
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
























































 
void vTaskGetInfo( TaskHandle_t xTask,
                   TaskStatus_t * pxTaskStatus,
                   BaseType_t xGetFreeStackSpace,
                   eTaskState eState ) ;










































 
void vTaskPrioritySet( TaskHandle_t xTask,
                       UBaseType_t uxNewPriority ) ;



















































 
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;

















































 
void vTaskResume( TaskHandle_t xTaskToResume ) ;





























 
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;



 





























 
void vTaskStartScheduler( void ) ;
























































 
void vTaskEndScheduler( void ) ;



















































 
void vTaskSuspendAll( void ) ;






















































 
BaseType_t xTaskResumeAll( void ) ;



 











 
TickType_t xTaskGetTickCount( void ) ;
















 
TickType_t xTaskGetTickCountFromISR( void ) ;














 
UBaseType_t uxTaskGetNumberOfTasks( void ) ;













 
char * pcTaskGetName( TaskHandle_t xTaskToQuery ) ;  
















 
TaskHandle_t xTaskGetHandle( const char * pcNameToQuery ) ;  



























 
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;



























 
uint16_t uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;






 
#line 1610 ".\\os\\include\\task.h"

#line 1625 ".\\os\\include\\task.h"

#line 1645 ".\\os\\include\\task.h"

#line 1659 ".\\os\\include\\task.h"

#line 1679 ".\\os\\include\\task.h"













 
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask,
                                         void * pvParameter ) ;







 
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;

































































































 
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray,
                                  const UBaseType_t uxArraySize,
                                  uint32_t * const pulTotalRunTime ) ;

















































 
void vTaskList( char * pcWriteBuffer ) ;  






















































 
void vTaskGetRunTimeStats( char * pcWriteBuffer ) ;  






































 
uint32_t ulTaskGetIdleRunTimeCounter( void ) ;
uint32_t ulTaskGetIdleRunTimePercent( void ) ;












































































































 
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify,
                               UBaseType_t uxIndexToNotify,
                               uint32_t ulValue,
                               eNotifyAction eAction,
                               uint32_t * pulPreviousNotificationValue ) ;




























 





















































































































 
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify,
                                      UBaseType_t uxIndexToNotify,
                                      uint32_t ulValue,
                                      eNotifyAction eAction,
                                      uint32_t * pulPreviousNotificationValue,
                                      BaseType_t * pxHigherPriorityTaskWoken ) ;




























 












































































































 
BaseType_t xTaskGenericNotifyWait( UBaseType_t uxIndexToWaitOn,
                                   uint32_t ulBitsToClearOnEntry,
                                   uint32_t ulBitsToClearOnExit,
                                   uint32_t * pulNotificationValue,
                                   TickType_t xTicksToWait ) ;












































































 



















































































 
void vTaskGenericNotifyGiveFromISR( TaskHandle_t xTaskToNotify,
                                    UBaseType_t uxIndexToNotify,
                                    BaseType_t * pxHigherPriorityTaskWoken ) ;






































































































 
uint32_t ulTaskGenericNotifyTake( UBaseType_t uxIndexToWaitOn,
                                  BaseType_t xClearCountOnExit,
                                  TickType_t xTicksToWait ) ;





























































 
BaseType_t xTaskGenericNotifyStateClear( TaskHandle_t xTask,
                                         UBaseType_t uxIndexToClear ) ;






























































 
uint32_t ulTaskGenericNotifyValueClear( TaskHandle_t xTask,
                                        UBaseType_t uxIndexToClear,
                                        uint32_t ulBitsToClear ) ;


















 
void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;



















































































 
BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut,
                                 TickType_t * const pxTicksToWait ) ;


























 
BaseType_t xTaskCatchUpTicks( TickType_t xTicksToCatchUp ) ;




 















 
BaseType_t xTaskIncrementTick( void ) ;































 
void vTaskPlaceOnEventList( List_t * const pxEventList,
                            const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList,
                                     const TickType_t xItemValue,
                                     const TickType_t xTicksToWait ) ;











 
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList,
                                      TickType_t xTicksToWait,
                                      const BaseType_t xWaitIndefinitely ) ;
























 
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem,
                                        const TickType_t xItemValue ) ;








 
 void vTaskSwitchContext( void ) ;




 
TickType_t uxTaskResetEventItemValue( void ) ;



 
TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




 
void vTaskMissedYield( void ) ;




 
BaseType_t xTaskGetSchedulerState( void ) ;




 
BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;




 
BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;








 
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder,
                                          UBaseType_t uxHighestPriorityWaitingTask ) ;



 
UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;




 
void vTaskSetTaskNumber( TaskHandle_t xTask,
                         const UBaseType_t uxHandle ) ;








 
void vTaskStepTick( const TickType_t xTicksToJump ) ;














 
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;




 
TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;




 
void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;


 



 
#line 39 "os\\queue.c"
#line 1 ".\\os\\include\\queue.h"


























 









 



 

#line 44 ".\\os\\include\\queue.h"





 
struct QueueDefinition;  
typedef struct QueueDefinition   * QueueHandle_t;





 
typedef struct QueueDefinition   * QueueSetHandle_t;





 
typedef struct QueueDefinition   * QueueSetMemberHandle_t;

 




 
#line 79 ".\\os\\include\\queue.h"




































































 





















































































 

















































































 


















































































 




















































































 



















































































 
























































































 
BaseType_t xQueueGenericSend( QueueHandle_t xQueue,
                              const void * const pvItemToQueue,
                              TickType_t xTicksToWait,
                              const BaseType_t xCopyPosition ) ;





























































































 
BaseType_t xQueuePeek( QueueHandle_t xQueue,
                       void * const pvBuffer,
                       TickType_t xTicksToWait ) ;
































 
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue,
                              void * const pvBuffer ) ;


























































































 
BaseType_t xQueueReceive( QueueHandle_t xQueue,
                          void * const pvBuffer,
                          TickType_t xTicksToWait ) ;















 
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;

















 
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;














 
void vQueueDelete( QueueHandle_t xQueue ) ;




































































 







































































 























































































 










































































 















































































 
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue,
                                     const void * const pvItemToQueue,
                                     BaseType_t * const pxHigherPriorityTaskWoken,
                                     const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue,
                              BaseType_t * const pxHigherPriorityTaskWoken ) ;























































































 
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue,
                                 void * const pvBuffer,
                                 BaseType_t * const pxHigherPriorityTaskWoken ) ;




 
BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;









 
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue,
                                const void * pvItemToQueue,
                                BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue,
                                   void * pvBuffer,
                                   BaseType_t * pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue,
                         const void * pvItemToQueue,
                         TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue,
                            void * pvBuffer,
                            TickType_t xTicksToWait );





 
QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType,
                                       StaticQueue_t * pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount,
                                             const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount,
                                                   const UBaseType_t uxInitialCount,
                                                   StaticQueue_t * pxStaticQueue ) ;
BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue,
                                TickType_t xTicksToWait ) ;
TaskHandle_t xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;
TaskHandle_t xQueueGetMutexHolderFromISR( QueueHandle_t xSemaphore ) ;




 
BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex,
                                     TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t xMutex ) ;




 



























 














 














 








 

    QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength,
                                       const UBaseType_t uxItemSize,
                                       const uint8_t ucQueueType ) ;






 
#line 1566 ".\\os\\include\\queue.h"
















































 
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;






















 
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore,
                           QueueSetHandle_t xQueueSet ) ;

















 
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore,
                                QueueSetHandle_t xQueueSet ) ;


































 
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet,
                                            const TickType_t xTicksToWait ) ;



 
QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;

 
void vQueueWaitForMessageRestricted( QueueHandle_t xQueue,
                                     TickType_t xTicksToWait,
                                     const BaseType_t xWaitIndefinitely ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue,
                               BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue,
                           UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;


 



 

#line 40 "os\\queue.c"








 



 












 



typedef struct QueuePointers
{
    int8_t * pcTail;      
    int8_t * pcReadFrom;  
} QueuePointers_t;

typedef struct SemaphoreData
{
    TaskHandle_t xMutexHolder;         
    UBaseType_t uxRecursiveCallCount;  
} SemaphoreData_t;


 



#line 94 "os\\queue.c"





 
typedef struct QueueDefinition  
{
    int8_t * pcHead;            
    int8_t * pcWriteTo;         

    union
    {
        QueuePointers_t xQueue;      
        SemaphoreData_t xSemaphore;  
    } u;

    List_t xTasksWaitingToSend;              
    List_t xTasksWaitingToReceive;           

    volatile UBaseType_t uxMessagesWaiting;  
    UBaseType_t uxLength;                    
    UBaseType_t uxItemSize;                  

    volatile int8_t cRxLock;                 
    volatile int8_t cTxLock;                 






        struct QueueDefinition * pxQueueSetContainer;



        UBaseType_t uxQueueNumber;
        uint8_t ucQueueType;

} xQUEUE;


 
typedef xQUEUE Queue_t;

 




 
#line 167 "os\\queue.c"








 
static void prvUnlockQueue( Queue_t * const pxQueue ) ;





 
static BaseType_t prvIsQueueEmpty( const Queue_t * pxQueue ) ;





 
static BaseType_t prvIsQueueFull( const Queue_t * pxQueue ) ;




 
static BaseType_t prvCopyDataToQueue( Queue_t * const pxQueue,
                                      const void * pvItemToQueue,
                                      const BaseType_t xPosition ) ;



 
static void prvCopyDataFromQueue( Queue_t * const pxQueue,
                                  void * const pvBuffer ) ;






 
    static BaseType_t prvNotifyQueueSetContainer( const Queue_t * const pxQueue ) ;





 
static void prvInitialiseNewQueue( const UBaseType_t uxQueueLength,
                                   const UBaseType_t uxItemSize,
                                   uint8_t * pucQueueStorage,
                                   const uint8_t ucQueueType,
                                   Queue_t * pxNewQueue ) ;





 

    static void prvInitialiseMutex( Queue_t * pxNewQueue ) ;










 
    static UBaseType_t prvGetDisinheritPriorityAfterTimeout( const Queue_t * const pxQueue ) ;

 




 
#line 264 "os\\queue.c"
 

BaseType_t xQueueGenericReset( QueueHandle_t xQueue,
                               BaseType_t xNewQueue )
{
    BaseType_t xReturn = ( ( ( BaseType_t ) 1 ) );
    Queue_t * const pxQueue = xQueue;

    if( ( pxQueue ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

    if( ( pxQueue != 0 ) &&
        ( pxQueue->uxLength >= 1U ) &&
         
        ( ( 4294967295u / pxQueue->uxLength ) >= pxQueue->uxItemSize ) )
    {
        vPortEnterCritical();
        {
            pxQueue->u.xQueue.pcTail = pxQueue->pcHead + ( pxQueue->uxLength * pxQueue->uxItemSize );  
            pxQueue->uxMessagesWaiting = ( UBaseType_t ) 0U;
            pxQueue->pcWriteTo = pxQueue->pcHead;
            pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead + ( ( pxQueue->uxLength - 1U ) * pxQueue->uxItemSize );  
            pxQueue->cRxLock = ( ( int8_t ) -1 );
            pxQueue->cTxLock = ( ( int8_t ) -1 );

            if( xNewQueue == ( ( BaseType_t ) 0 ) )
            {
                



 
                if( ( ( ( &( pxQueue ->xTasksWaitingToSend ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
                {
                    if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != ( ( BaseType_t ) 0 ) )
                    {
                        { ( *( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
                    }
                    else
                    {
                        ;
                    }
                }
                else
                {
                    ;
                }
            }
            else
            {
                 
                vListInitialise( &( pxQueue->xTasksWaitingToSend ) );
                vListInitialise( &( pxQueue->xTasksWaitingToReceive ) );
            }
        }
        vPortExitCritical();
    }
    else
    {
        xReturn = ( ( ( BaseType_t ) 0 ) );
    }

    if( ( xReturn != ( ( ( BaseType_t ) 0 ) ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

    
 
    return xReturn;
}
 

#line 394 "os\\queue.c"
 



    QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength,
                                       const UBaseType_t uxItemSize,
                                       const uint8_t ucQueueType )
    {
        Queue_t * pxNewQueue = 0;
        size_t xQueueSizeInBytes;
        uint8_t * pucQueueStorage;

        if( ( uxQueueLength > ( UBaseType_t ) 0 ) &&
             
            ( ( 4294967295u / uxQueueLength ) >= uxItemSize ) &&
             
            ( ( 4294967295u - sizeof( Queue_t ) ) >= ( uxQueueLength * uxItemSize ) ) )
        {
            

 
            xQueueSizeInBytes = ( size_t ) ( uxQueueLength * uxItemSize );  

            







 
            pxNewQueue = ( Queue_t * ) pvPortMalloc( sizeof( Queue_t ) + xQueueSizeInBytes );  

            if( pxNewQueue != 0 )
            {
                
 
                pucQueueStorage = ( uint8_t * ) pxNewQueue;
                pucQueueStorage += sizeof( Queue_t );  

#line 443 "os\\queue.c"

                prvInitialiseNewQueue( uxQueueLength, uxItemSize, pucQueueStorage, ucQueueType, pxNewQueue );
            }
            else
            {
                ;
                ;
            }
        }
        else
        {
            if( ( pxNewQueue ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
            ;
        }

        return pxNewQueue;
    }


 

static void prvInitialiseNewQueue( const UBaseType_t uxQueueLength,
                                   const UBaseType_t uxItemSize,
                                   uint8_t * pucQueueStorage,
                                   const uint8_t ucQueueType,
                                   Queue_t * pxNewQueue )
{
    
 
    ( void ) ucQueueType;

    if( uxItemSize == ( UBaseType_t ) 0 )
    {
        


 
        pxNewQueue->pcHead = ( int8_t * ) pxNewQueue;
    }
    else
    {
         
        pxNewQueue->pcHead = ( int8_t * ) pucQueueStorage;
    }

    
 
    pxNewQueue->uxLength = uxQueueLength;
    pxNewQueue->uxItemSize = uxItemSize;
    ( void ) xQueueGenericReset( pxNewQueue, ( ( BaseType_t ) 1 ) );


        {
            pxNewQueue->ucQueueType = ucQueueType;
        }



        {
            pxNewQueue->pxQueueSetContainer = 0;
        }


    ;
}
 



    static void prvInitialiseMutex( Queue_t * pxNewQueue )
    {
        if( pxNewQueue != 0 )
        {
            


 
            pxNewQueue->u.xSemaphore.xMutexHolder = 0;
            pxNewQueue->pcHead = 0;

             
            pxNewQueue->u.xSemaphore.uxRecursiveCallCount = 0;

            ;

             
            ( void ) xQueueGenericSend( pxNewQueue, 0, ( TickType_t ) 0U, ( ( BaseType_t ) 0 ) );
        }
        else
        {
            ;
        }
    }


 



    QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType )
    {
        QueueHandle_t xNewQueue;
        const UBaseType_t uxMutexLength = ( UBaseType_t ) 1, uxMutexSize = ( UBaseType_t ) 0;

        xNewQueue = xQueueGenericCreate( uxMutexLength, uxMutexSize, ucQueueType );
        prvInitialiseMutex( ( Queue_t * ) xNewQueue );

        return xNewQueue;
    }


 

#line 575 "os\\queue.c"
 



    TaskHandle_t xQueueGetMutexHolder( QueueHandle_t xSemaphore )
    {
        TaskHandle_t pxReturn;
        Queue_t * const pxSemaphore = ( Queue_t * ) xSemaphore;

        if( ( xSemaphore ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

        



 
        vPortEnterCritical();
        {
            if( pxSemaphore->pcHead == 0 )
            {
                pxReturn = pxSemaphore->u.xSemaphore.xMutexHolder;
            }
            else
            {
                pxReturn = 0;
            }
        }
        vPortExitCritical();

        return pxReturn;
    }  


 



    TaskHandle_t xQueueGetMutexHolderFromISR( QueueHandle_t xSemaphore )
    {
        TaskHandle_t pxReturn;

        if( ( xSemaphore ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

        

 
        if( ( ( Queue_t * ) xSemaphore )->pcHead == 0 )
        {
            pxReturn = ( ( Queue_t * ) xSemaphore )->u.xSemaphore.xMutexHolder;
        }
        else
        {
            pxReturn = 0;
        }

        return pxReturn;
    }  


 



    BaseType_t xQueueGiveMutexRecursive( QueueHandle_t xMutex )
    {
        BaseType_t xReturn;
        Queue_t * const pxMutex = ( Queue_t * ) xMutex;

        if( ( pxMutex ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

        




 
        if( pxMutex->u.xSemaphore.xMutexHolder == xTaskGetCurrentTaskHandle() )
        {
            ;

            



 
            ( pxMutex->u.xSemaphore.uxRecursiveCallCount )--;

             
            if( pxMutex->u.xSemaphore.uxRecursiveCallCount == ( UBaseType_t ) 0 )
            {
                
 
                ( void ) xQueueGenericSend( pxMutex, 0, ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
            }
            else
            {
                ;
            }

            xReturn = ( ( ( BaseType_t ) 1 ) );
        }
        else
        {
            
 
            xReturn = ( ( ( BaseType_t ) 0 ) );

            ;
        }

        return xReturn;
    }


 



    BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex,
                                         TickType_t xTicksToWait )
    {
        BaseType_t xReturn;
        Queue_t * const pxMutex = ( Queue_t * ) xMutex;

        if( ( pxMutex ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

        
 

        ;

        if( pxMutex->u.xSemaphore.xMutexHolder == xTaskGetCurrentTaskHandle() )
        {
            ( pxMutex->u.xSemaphore.uxRecursiveCallCount )++;
            xReturn = ( ( ( BaseType_t ) 1 ) );
        }
        else
        {
            xReturn = xQueueSemaphoreTake( pxMutex, xTicksToWait );

            

 
            if( xReturn != ( ( ( BaseType_t ) 0 ) ) )
            {
                ( pxMutex->u.xSemaphore.uxRecursiveCallCount )++;
            }
            else
            {
                ;
            }
        }

        return xReturn;
    }


 

#line 768 "os\\queue.c"
 



    QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount,
                                                 const UBaseType_t uxInitialCount )
    {
        QueueHandle_t xHandle = 0;

        if( ( uxMaxCount != 0 ) &&
            ( uxInitialCount <= uxMaxCount ) )
        {
            xHandle = xQueueGenericCreate( uxMaxCount, ( ( UBaseType_t ) 0 ), ( ( uint8_t ) 2U ) );

            if( xHandle != 0 )
            {
                ( ( Queue_t * ) xHandle )->uxMessagesWaiting = uxInitialCount;

                ;
            }
            else
            {
                ;
            }
        }
        else
        {
            if( ( xHandle ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
            ;
        }

        return xHandle;
    }


 

BaseType_t xQueueGenericSend( QueueHandle_t xQueue,
                              const void * const pvItemToQueue,
                              TickType_t xTicksToWait,
                              const BaseType_t xCopyPosition )
{
    BaseType_t xEntryTimeSet = ( ( BaseType_t ) 0 ), xYieldRequired;
    TimeOut_t xTimeOut;
    Queue_t * const pxQueue = xQueue;

    if( ( pxQueue ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
    if( ( !( ( pvItemToQueue == 0 ) && ( pxQueue ->uxItemSize != ( UBaseType_t ) 0U ) ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
    if( ( !( ( xCopyPosition == ( ( BaseType_t ) 2 ) ) && ( pxQueue ->uxLength != 1 ) ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

        {
            if( ( !( ( xTaskGetSchedulerState() == ( ( BaseType_t ) 0 ) ) && ( xTicksToWait != 0 ) ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
        }


    

 
    for( ; ; )
    {
        vPortEnterCritical();
        {
            


 
            if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == ( ( BaseType_t ) 2 ) ) )
            {
                ;


                    {
                        const UBaseType_t uxPreviousMessagesWaiting = pxQueue->uxMessagesWaiting;

                        xYieldRequired = prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );

                        if( pxQueue->pxQueueSetContainer != 0 )
                        {
                            if( ( xCopyPosition == ( ( BaseType_t ) 2 ) ) && ( uxPreviousMessagesWaiting != ( UBaseType_t ) 0 ) )
                            {
                                

 
                                ;
                            }
                            else if( prvNotifyQueueSetContainer( pxQueue ) != ( ( BaseType_t ) 0 ) )
                            {
                                

 
                                { ( *( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
                            }
                            else
                            {
                                ;
                            }
                        }
                        else
                        {
                            
 
                            if( ( ( ( &( pxQueue ->xTasksWaitingToReceive ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
                            {
                                if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != ( ( BaseType_t ) 0 ) )
                                {
                                    


 
                                    { ( *( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
                                }
                                else
                                {
                                    ;
                                }
                            }
                            else if( xYieldRequired != ( ( BaseType_t ) 0 ) )
                            {
                                


 
                                { ( *( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
                            }
                            else
                            {
                                ;
                            }
                        }
                    }
#line 933 "os\\queue.c"

                vPortExitCritical();
                return ( ( ( BaseType_t ) 1 ) );
            }
            else
            {
                if( xTicksToWait == ( TickType_t ) 0 )
                {
                    
 
                    vPortExitCritical();

                    
 
                    ;
                    return ( ( BaseType_t ) 0 );
                }
                else if( xEntryTimeSet == ( ( BaseType_t ) 0 ) )
                {
                    
 
                    vTaskInternalSetTimeOutState( &xTimeOut );
                    xEntryTimeSet = ( ( BaseType_t ) 1 );
                }
                else
                {
                     
                    ;
                }
            }
        }
        vPortExitCritical();

        
 

        vTaskSuspendAll();
        vPortEnterCritical(); { if( ( pxQueue )->cRxLock == ( ( int8_t ) -1 ) ) { ( pxQueue )->cRxLock = ( ( int8_t ) 0 ); } if( ( pxQueue )->cTxLock == ( ( int8_t ) -1 ) ) { ( pxQueue )->cTxLock = ( ( int8_t ) 0 ); } } vPortExitCritical();

         
        if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == ( ( BaseType_t ) 0 ) )
        {
            if( prvIsQueueFull( pxQueue ) != ( ( BaseType_t ) 0 ) )
            {
                ;
                vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToSend ), xTicksToWait );

                



 
                prvUnlockQueue( pxQueue );

                



 
                if( xTaskResumeAll() == ( ( BaseType_t ) 0 ) )
                {
                    { ( *( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
                }
            }
            else
            {
                 
                prvUnlockQueue( pxQueue );
                ( void ) xTaskResumeAll();
            }
        }
        else
        {
             
            prvUnlockQueue( pxQueue );
            ( void ) xTaskResumeAll();

            ;
            return ( ( BaseType_t ) 0 );
        }
    }  
}
 

BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue,
                                     const void * const pvItemToQueue,
                                     BaseType_t * const pxHigherPriorityTaskWoken,
                                     const BaseType_t xCopyPosition )
{
    BaseType_t xReturn;
    UBaseType_t uxSavedInterruptStatus;
    Queue_t * const pxQueue = xQueue;

    if( ( pxQueue ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
    if( ( !( ( pvItemToQueue == 0 ) && ( pxQueue ->uxItemSize != ( UBaseType_t ) 0U ) ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
    if( ( !( ( xCopyPosition == ( ( BaseType_t ) 2 ) ) && ( pxQueue ->uxLength != 1 ) ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

    












 
    vPortValidateInterruptPriority();

    



 
    uxSavedInterruptStatus = ulPortRaiseBASEPRI();
    {
        if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == ( ( BaseType_t ) 2 ) ) )
        {
            const int8_t cTxLock = pxQueue->cTxLock;
            const UBaseType_t uxPreviousMessagesWaiting = pxQueue->uxMessagesWaiting;

            ;

            



 
            ( void ) prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );

            
 
            if( cTxLock == ( ( int8_t ) -1 ) )
            {

                    {
                        if( pxQueue->pxQueueSetContainer != 0 )
                        {
                            if( ( xCopyPosition == ( ( BaseType_t ) 2 ) ) && ( uxPreviousMessagesWaiting != ( UBaseType_t ) 0 ) )
                            {
                                

 
                                ;
                            }
                            else if( prvNotifyQueueSetContainer( pxQueue ) != ( ( BaseType_t ) 0 ) )
                            {
                                

 
                                if( pxHigherPriorityTaskWoken != 0 )
                                {
                                    *pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
                                }
                                else
                                {
                                    ;
                                }
                            }
                            else
                            {
                                ;
                            }
                        }
                        else
                        {
                            if( ( ( ( &( pxQueue ->xTasksWaitingToReceive ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
                            {
                                if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != ( ( BaseType_t ) 0 ) )
                                {
                                    
 
                                    if( pxHigherPriorityTaskWoken != 0 )
                                    {
                                        *pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
                                    }
                                    else
                                    {
                                        ;
                                    }
                                }
                                else
                                {
                                    ;
                                }
                            }
                            else
                            {
                                ;
                            }
                        }
                    }
#line 1160 "os\\queue.c"
            }
            else
            {
                
 
                if( ( cTxLock != ( ( int8_t ) 127 ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

                pxQueue->cTxLock = ( int8_t ) ( cTxLock + 1 );
            }

            xReturn = ( ( ( BaseType_t ) 1 ) );
        }
        else
        {
            ;
            xReturn = ( ( BaseType_t ) 0 );
        }
    }
    vPortSetBASEPRI( uxSavedInterruptStatus );

    return xReturn;
}
 

BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue,
                              BaseType_t * const pxHigherPriorityTaskWoken )
{
    BaseType_t xReturn;
    UBaseType_t uxSavedInterruptStatus;
    Queue_t * const pxQueue = xQueue;

    



 

    if( ( pxQueue ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

    
 
    if( ( pxQueue ->uxItemSize == 0 ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

    

 
    if( ( !( ( pxQueue ->pcHead == 0 ) && ( pxQueue ->u . xSemaphore . xMutexHolder != 0 ) ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

    












 
    vPortValidateInterruptPriority();

    uxSavedInterruptStatus = ulPortRaiseBASEPRI();
    {
        const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;

        

 
        if( uxMessagesWaiting < pxQueue->uxLength )
        {
            const int8_t cTxLock = pxQueue->cTxLock;

            ;

            




 
            pxQueue->uxMessagesWaiting = uxMessagesWaiting + ( UBaseType_t ) 1;

            
 
            if( cTxLock == ( ( int8_t ) -1 ) )
            {

                    {
                        if( pxQueue->pxQueueSetContainer != 0 )
                        {
                            if( prvNotifyQueueSetContainer( pxQueue ) != ( ( BaseType_t ) 0 ) )
                            {
                                

 
                                if( pxHigherPriorityTaskWoken != 0 )
                                {
                                    *pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
                                }
                                else
                                {
                                    ;
                                }
                            }
                            else
                            {
                                ;
                            }
                        }
                        else
                        {
                            if( ( ( ( &( pxQueue ->xTasksWaitingToReceive ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
                            {
                                if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != ( ( BaseType_t ) 0 ) )
                                {
                                    
 
                                    if( pxHigherPriorityTaskWoken != 0 )
                                    {
                                        *pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
                                    }
                                    else
                                    {
                                        ;
                                    }
                                }
                                else
                                {
                                    ;
                                }
                            }
                            else
                            {
                                ;
                            }
                        }
                    }
#line 1328 "os\\queue.c"
            }
            else
            {
                
 
                if( ( cTxLock != ( ( int8_t ) 127 ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

                pxQueue->cTxLock = ( int8_t ) ( cTxLock + 1 );
            }

            xReturn = ( ( ( BaseType_t ) 1 ) );
        }
        else
        {
            ;
            xReturn = ( ( BaseType_t ) 0 );
        }
    }
    vPortSetBASEPRI( uxSavedInterruptStatus );

    return xReturn;
}
 

BaseType_t xQueueReceive( QueueHandle_t xQueue,
                          void * const pvBuffer,
                          TickType_t xTicksToWait )
{
    BaseType_t xEntryTimeSet = ( ( BaseType_t ) 0 );
    TimeOut_t xTimeOut;
    Queue_t * const pxQueue = xQueue;

     
    if( ( ( pxQueue ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

    
 
    if( ( !( ( ( pvBuffer ) == 0 ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

     

        {
            if( ( !( ( xTaskGetSchedulerState() == ( ( BaseType_t ) 0 ) ) && ( xTicksToWait != 0 ) ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
        }


    

 
    for( ; ; )
    {
        vPortEnterCritical();
        {
            const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;

            
 
            if( uxMessagesWaiting > ( UBaseType_t ) 0 )
            {
                 
                prvCopyDataFromQueue( pxQueue, pvBuffer );
                ;
                pxQueue->uxMessagesWaiting = uxMessagesWaiting - ( UBaseType_t ) 1;

                

 
                if( ( ( ( &( pxQueue ->xTasksWaitingToSend ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
                {
                    if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != ( ( BaseType_t ) 0 ) )
                    {
                        { ( *( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
                    }
                    else
                    {
                        ;
                    }
                }
                else
                {
                    ;
                }

                vPortExitCritical();
                return ( ( ( BaseType_t ) 1 ) );
            }
            else
            {
                if( xTicksToWait == ( TickType_t ) 0 )
                {
                    
 
                    vPortExitCritical();
                    ;
                    return ( ( BaseType_t ) 0 );
                }
                else if( xEntryTimeSet == ( ( BaseType_t ) 0 ) )
                {
                    
 
                    vTaskInternalSetTimeOutState( &xTimeOut );
                    xEntryTimeSet = ( ( BaseType_t ) 1 );
                }
                else
                {
                     
                    ;
                }
            }
        }
        vPortExitCritical();

        
 

        vTaskSuspendAll();
        vPortEnterCritical(); { if( ( pxQueue )->cRxLock == ( ( int8_t ) -1 ) ) { ( pxQueue )->cRxLock = ( ( int8_t ) 0 ); } if( ( pxQueue )->cTxLock == ( ( int8_t ) -1 ) ) { ( pxQueue )->cTxLock = ( ( int8_t ) 0 ); } } vPortExitCritical();

         
        if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == ( ( BaseType_t ) 0 ) )
        {
            
 
            if( prvIsQueueEmpty( pxQueue ) != ( ( BaseType_t ) 0 ) )
            {
                ;
                vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
                prvUnlockQueue( pxQueue );

                if( xTaskResumeAll() == ( ( BaseType_t ) 0 ) )
                {
                    { ( *( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
                }
                else
                {
                    ;
                }
            }
            else
            {
                
 
                prvUnlockQueue( pxQueue );
                ( void ) xTaskResumeAll();
            }
        }
        else
        {
            
 
            prvUnlockQueue( pxQueue );
            ( void ) xTaskResumeAll();

            if( prvIsQueueEmpty( pxQueue ) != ( ( BaseType_t ) 0 ) )
            {
                ;
                return ( ( BaseType_t ) 0 );
            }
            else
            {
                ;
            }
        }
    }  
}
 

BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue,
                                TickType_t xTicksToWait )
{
    BaseType_t xEntryTimeSet = ( ( BaseType_t ) 0 );
    TimeOut_t xTimeOut;
    Queue_t * const pxQueue = xQueue;


        BaseType_t xInheritanceOccurred = ( ( BaseType_t ) 0 );


     
    if( ( ( pxQueue ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

    
 
    if( ( pxQueue ->uxItemSize == 0 ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

     

        {
            if( ( !( ( xTaskGetSchedulerState() == ( ( BaseType_t ) 0 ) ) && ( xTicksToWait != 0 ) ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
        }


    

 
    for( ; ; )
    {
        vPortEnterCritical();
        {
            
 
            const UBaseType_t uxSemaphoreCount = pxQueue->uxMessagesWaiting;

            
 
            if( uxSemaphoreCount > ( UBaseType_t ) 0 )
            {
                ;

                
 
                pxQueue->uxMessagesWaiting = uxSemaphoreCount - ( UBaseType_t ) 1;


                    {
                        if( pxQueue->pcHead == 0 )
                        {
                            
 
                            pxQueue->u.xSemaphore.xMutexHolder = pvTaskIncrementMutexHeldCount();
                        }
                        else
                        {
                            ;
                        }
                    }


                
 
                if( ( ( ( &( pxQueue ->xTasksWaitingToSend ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
                {
                    if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != ( ( BaseType_t ) 0 ) )
                    {
                        { ( *( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
                    }
                    else
                    {
                        ;
                    }
                }
                else
                {
                    ;
                }

                vPortExitCritical();
                return ( ( ( BaseType_t ) 1 ) );
            }
            else
            {
                if( xTicksToWait == ( TickType_t ) 0 )
                {
                    

 

                        {
                            if( ( xInheritanceOccurred == ( ( BaseType_t ) 0 ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
                        }


                    
 
                    vPortExitCritical();
                    ;
                    return ( ( BaseType_t ) 0 );
                }
                else if( xEntryTimeSet == ( ( BaseType_t ) 0 ) )
                {
                    
 
                    vTaskInternalSetTimeOutState( &xTimeOut );
                    xEntryTimeSet = ( ( BaseType_t ) 1 );
                }
                else
                {
                     
                    ;
                }
            }
        }
        vPortExitCritical();

        
 

        vTaskSuspendAll();
        vPortEnterCritical(); { if( ( pxQueue )->cRxLock == ( ( int8_t ) -1 ) ) { ( pxQueue )->cRxLock = ( ( int8_t ) 0 ); } if( ( pxQueue )->cTxLock == ( ( int8_t ) -1 ) ) { ( pxQueue )->cTxLock = ( ( int8_t ) 0 ); } } vPortExitCritical();

         
        if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == ( ( BaseType_t ) 0 ) )
        {
            


 
            if( prvIsQueueEmpty( pxQueue ) != ( ( BaseType_t ) 0 ) )
            {
                ;


                    {
                        if( pxQueue->pcHead == 0 )
                        {
                            vPortEnterCritical();
                            {
                                xInheritanceOccurred = xTaskPriorityInherit( pxQueue->u.xSemaphore.xMutexHolder );
                            }
                            vPortExitCritical();
                        }
                        else
                        {
                            ;
                        }
                    }


                vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
                prvUnlockQueue( pxQueue );

                if( xTaskResumeAll() == ( ( BaseType_t ) 0 ) )
                {
                    { ( *( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
                }
                else
                {
                    ;
                }
            }
            else
            {
                
 
                prvUnlockQueue( pxQueue );
                ( void ) xTaskResumeAll();
            }
        }
        else
        {
             
            prvUnlockQueue( pxQueue );
            ( void ) xTaskResumeAll();

            


 
            if( prvIsQueueEmpty( pxQueue ) != ( ( BaseType_t ) 0 ) )
            {

                    {
                        

 
                        if( xInheritanceOccurred != ( ( BaseType_t ) 0 ) )
                        {
                            vPortEnterCritical();
                            {
                                UBaseType_t uxHighestWaitingPriority;

                                



 
                                uxHighestWaitingPriority = prvGetDisinheritPriorityAfterTimeout( pxQueue );
                                vTaskPriorityDisinheritAfterTimeout( pxQueue->u.xSemaphore.xMutexHolder, uxHighestWaitingPriority );
                            }
                            vPortExitCritical();
                        }
                    }


                ;
                return ( ( BaseType_t ) 0 );
            }
            else
            {
                ;
            }
        }
    }  
}
 

BaseType_t xQueuePeek( QueueHandle_t xQueue,
                       void * const pvBuffer,
                       TickType_t xTicksToWait )
{
    BaseType_t xEntryTimeSet = ( ( BaseType_t ) 0 );
    TimeOut_t xTimeOut;
    int8_t * pcOriginalReadPosition;
    Queue_t * const pxQueue = xQueue;

     
    if( ( ( pxQueue ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

    
 
    if( ( !( ( ( pvBuffer ) == 0 ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

     

        {
            if( ( !( ( xTaskGetSchedulerState() == ( ( BaseType_t ) 0 ) ) && ( xTicksToWait != 0 ) ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
        }


    

 
    for( ; ; )
    {
        vPortEnterCritical();
        {
            const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;

            
 
            if( uxMessagesWaiting > ( UBaseType_t ) 0 )
            {
                

 
                pcOriginalReadPosition = pxQueue->u.xQueue.pcReadFrom;

                prvCopyDataFromQueue( pxQueue, pvBuffer );
                ;

                 
                pxQueue->u.xQueue.pcReadFrom = pcOriginalReadPosition;

                
 
                if( ( ( ( &( pxQueue ->xTasksWaitingToReceive ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
                {
                    if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != ( ( BaseType_t ) 0 ) )
                    {
                         
                        { ( *( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
                    }
                    else
                    {
                        ;
                    }
                }
                else
                {
                    ;
                }

                vPortExitCritical();
                return ( ( ( BaseType_t ) 1 ) );
            }
            else
            {
                if( xTicksToWait == ( TickType_t ) 0 )
                {
                    
 
                    vPortExitCritical();
                    ;
                    return ( ( BaseType_t ) 0 );
                }
                else if( xEntryTimeSet == ( ( BaseType_t ) 0 ) )
                {
                    

 
                    vTaskInternalSetTimeOutState( &xTimeOut );
                    xEntryTimeSet = ( ( BaseType_t ) 1 );
                }
                else
                {
                     
                    ;
                }
            }
        }
        vPortExitCritical();

        
 

        vTaskSuspendAll();
        vPortEnterCritical(); { if( ( pxQueue )->cRxLock == ( ( int8_t ) -1 ) ) { ( pxQueue )->cRxLock = ( ( int8_t ) 0 ); } if( ( pxQueue )->cTxLock == ( ( int8_t ) -1 ) ) { ( pxQueue )->cTxLock = ( ( int8_t ) 0 ); } } vPortExitCritical();

         
        if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == ( ( BaseType_t ) 0 ) )
        {
            
 
            if( prvIsQueueEmpty( pxQueue ) != ( ( BaseType_t ) 0 ) )
            {
                ;
                vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
                prvUnlockQueue( pxQueue );

                if( xTaskResumeAll() == ( ( BaseType_t ) 0 ) )
                {
                    { ( *( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
                }
                else
                {
                    ;
                }
            }
            else
            {
                
 
                prvUnlockQueue( pxQueue );
                ( void ) xTaskResumeAll();
            }
        }
        else
        {
            
 
            prvUnlockQueue( pxQueue );
            ( void ) xTaskResumeAll();

            if( prvIsQueueEmpty( pxQueue ) != ( ( BaseType_t ) 0 ) )
            {
                ;
                return ( ( BaseType_t ) 0 );
            }
            else
            {
                ;
            }
        }
    }  
}
 

BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue,
                                 void * const pvBuffer,
                                 BaseType_t * const pxHigherPriorityTaskWoken )
{
    BaseType_t xReturn;
    UBaseType_t uxSavedInterruptStatus;
    Queue_t * const pxQueue = xQueue;

    if( ( pxQueue ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
    if( ( !( ( pvBuffer == 0 ) && ( pxQueue ->uxItemSize != ( UBaseType_t ) 0U ) ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

    












 
    vPortValidateInterruptPriority();

    uxSavedInterruptStatus = ulPortRaiseBASEPRI();
    {
        const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;

         
        if( uxMessagesWaiting > ( UBaseType_t ) 0 )
        {
            const int8_t cRxLock = pxQueue->cRxLock;

            ;

            prvCopyDataFromQueue( pxQueue, pvBuffer );
            pxQueue->uxMessagesWaiting = uxMessagesWaiting - ( UBaseType_t ) 1;

            


 
            if( cRxLock == ( ( int8_t ) -1 ) )
            {
                if( ( ( ( &( pxQueue ->xTasksWaitingToSend ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
                {
                    if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != ( ( BaseType_t ) 0 ) )
                    {
                        
 
                        if( pxHigherPriorityTaskWoken != 0 )
                        {
                            *pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
                        }
                        else
                        {
                            ;
                        }
                    }
                    else
                    {
                        ;
                    }
                }
                else
                {
                    ;
                }
            }
            else
            {
                
 
                if( ( cRxLock != ( ( int8_t ) 127 ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

                pxQueue->cRxLock = ( int8_t ) ( cRxLock + 1 );
            }

            xReturn = ( ( ( BaseType_t ) 1 ) );
        }
        else
        {
            xReturn = ( ( ( BaseType_t ) 0 ) );
            ;
        }
    }
    vPortSetBASEPRI( uxSavedInterruptStatus );

    return xReturn;
}
 

BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue,
                              void * const pvBuffer )
{
    BaseType_t xReturn;
    UBaseType_t uxSavedInterruptStatus;
    int8_t * pcOriginalReadPosition;
    Queue_t * const pxQueue = xQueue;

    if( ( pxQueue ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
    if( ( !( ( pvBuffer == 0 ) && ( pxQueue ->uxItemSize != ( UBaseType_t ) 0U ) ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
    if( ( pxQueue ->uxItemSize != 0 ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };  

    












 
    vPortValidateInterruptPriority();

    uxSavedInterruptStatus = ulPortRaiseBASEPRI();
    {
         
        if( pxQueue->uxMessagesWaiting > ( UBaseType_t ) 0 )
        {
            ;

            
 
            pcOriginalReadPosition = pxQueue->u.xQueue.pcReadFrom;
            prvCopyDataFromQueue( pxQueue, pvBuffer );
            pxQueue->u.xQueue.pcReadFrom = pcOriginalReadPosition;

            xReturn = ( ( ( BaseType_t ) 1 ) );
        }
        else
        {
            xReturn = ( ( ( BaseType_t ) 0 ) );
            ;
        }
    }
    vPortSetBASEPRI( uxSavedInterruptStatus );

    return xReturn;
}
 

UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue )
{
    UBaseType_t uxReturn;

    if( ( xQueue ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

    vPortEnterCritical();
    {
        uxReturn = ( ( Queue_t * ) xQueue )->uxMessagesWaiting;
    }
    vPortExitCritical();

    return uxReturn;
}  
 

UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue )
{
    UBaseType_t uxReturn;
    Queue_t * const pxQueue = xQueue;

    if( ( pxQueue ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

    vPortEnterCritical();
    {
        uxReturn = pxQueue->uxLength - pxQueue->uxMessagesWaiting;
    }
    vPortExitCritical();

    return uxReturn;
}  
 

UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue )
{
    UBaseType_t uxReturn;
    Queue_t * const pxQueue = xQueue;

    if( ( pxQueue ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
    uxReturn = pxQueue->uxMessagesWaiting;

    return uxReturn;
}  
 

void vQueueDelete( QueueHandle_t xQueue )
{
    Queue_t * const pxQueue = xQueue;

    if( ( pxQueue ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
    ;








        {
            
 
            vPortFree( pxQueue );
        }
#line 2099 "os\\queue.c"
}
 



    UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue )
    {
        return ( ( Queue_t * ) xQueue )->uxQueueNumber;
    }


 



    void vQueueSetQueueNumber( QueueHandle_t xQueue,
                               UBaseType_t uxQueueNumber )
    {
        ( ( Queue_t * ) xQueue )->uxQueueNumber = uxQueueNumber;
    }


 



    uint8_t ucQueueGetQueueType( QueueHandle_t xQueue )
    {
        return ( ( Queue_t * ) xQueue )->ucQueueType;
    }


 



    static UBaseType_t prvGetDisinheritPriorityAfterTimeout( const Queue_t * const pxQueue )
    {
        UBaseType_t uxHighestPriorityOfWaitingTasks;

        




 
        if( ( ( &( pxQueue ->xTasksWaitingToReceive ) )->uxNumberOfItems ) > 0U )
        {
            uxHighestPriorityOfWaitingTasks = ( UBaseType_t ) 5 - ( UBaseType_t ) ( ( ( &( pxQueue ->xTasksWaitingToReceive ) )->xListEnd ). pxNext->xItemValue );
        }
        else
        {
            uxHighestPriorityOfWaitingTasks = ( ( UBaseType_t ) 0U );
        }

        return uxHighestPriorityOfWaitingTasks;
    }


 

static BaseType_t prvCopyDataToQueue( Queue_t * const pxQueue,
                                      const void * pvItemToQueue,
                                      const BaseType_t xPosition )
{
    BaseType_t xReturn = ( ( BaseType_t ) 0 );
    UBaseType_t uxMessagesWaiting;

     

    uxMessagesWaiting = pxQueue->uxMessagesWaiting;

    if( pxQueue->uxItemSize == ( UBaseType_t ) 0 )
    {

            {
                if( pxQueue->pcHead == 0 )
                {
                     
                    xReturn = xTaskPriorityDisinherit( pxQueue->u.xSemaphore.xMutexHolder );
                    pxQueue->u.xSemaphore.xMutexHolder = 0;
                }
                else
                {
                    ;
                }
            }

    }
    else if( xPosition == ( ( BaseType_t ) 0 ) )
    {
        ( void ) memcpy( ( void * ) pxQueue->pcWriteTo, pvItemToQueue, ( size_t ) pxQueue->uxItemSize );  
        pxQueue->pcWriteTo += pxQueue->uxItemSize;                                                        

        if( pxQueue->pcWriteTo >= pxQueue->u.xQueue.pcTail )                                              
        {
            pxQueue->pcWriteTo = pxQueue->pcHead;
        }
        else
        {
            ;
        }
    }
    else
    {
        ( void ) memcpy( ( void * ) pxQueue->u.xQueue.pcReadFrom, pvItemToQueue, ( size_t ) pxQueue->uxItemSize );  
        pxQueue->u.xQueue.pcReadFrom -= pxQueue->uxItemSize;

        if( pxQueue->u.xQueue.pcReadFrom < pxQueue->pcHead )  
        {
            pxQueue->u.xQueue.pcReadFrom = ( pxQueue->u.xQueue.pcTail - pxQueue->uxItemSize );
        }
        else
        {
            ;
        }

        if( xPosition == ( ( BaseType_t ) 2 ) )
        {
            if( uxMessagesWaiting > ( UBaseType_t ) 0 )
            {
                


 
                --uxMessagesWaiting;
            }
            else
            {
                ;
            }
        }
        else
        {
            ;
        }
    }

    pxQueue->uxMessagesWaiting = uxMessagesWaiting + ( UBaseType_t ) 1;

    return xReturn;
}
 

static void prvCopyDataFromQueue( Queue_t * const pxQueue,
                                  void * const pvBuffer )
{
    if( pxQueue->uxItemSize != ( UBaseType_t ) 0 )
    {
        pxQueue->u.xQueue.pcReadFrom += pxQueue->uxItemSize;            

        if( pxQueue->u.xQueue.pcReadFrom >= pxQueue->u.xQueue.pcTail )  
        {
            pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead;
        }
        else
        {
            ;
        }

        ( void ) memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->u.xQueue.pcReadFrom, ( size_t ) pxQueue->uxItemSize );  
    }
}
 

static void prvUnlockQueue( Queue_t * const pxQueue )
{
     

    


 
    vPortEnterCritical();
    {
        int8_t cTxLock = pxQueue->cTxLock;

         
        while( cTxLock > ( ( int8_t ) 0 ) )
        {
            
 

                {
                    if( pxQueue->pxQueueSetContainer != 0 )
                    {
                        if( prvNotifyQueueSetContainer( pxQueue ) != ( ( BaseType_t ) 0 ) )
                        {
                            

 
                            vTaskMissedYield();
                        }
                        else
                        {
                            ;
                        }
                    }
                    else
                    {
                        

 
                        if( ( ( ( &( pxQueue ->xTasksWaitingToReceive ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
                        {
                            if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != ( ( BaseType_t ) 0 ) )
                            {
                                
 
                                vTaskMissedYield();
                            }
                            else
                            {
                                ;
                            }
                        }
                        else
                        {
                            break;
                        }
                    }
                }
#line 2344 "os\\queue.c"

            --cTxLock;
        }

        pxQueue->cTxLock = ( ( int8_t ) -1 );
    }
    vPortExitCritical();

     
    vPortEnterCritical();
    {
        int8_t cRxLock = pxQueue->cRxLock;

        while( cRxLock > ( ( int8_t ) 0 ) )
        {
            if( ( ( ( &( pxQueue ->xTasksWaitingToSend ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
            {
                if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != ( ( BaseType_t ) 0 ) )
                {
                    vTaskMissedYield();
                }
                else
                {
                    ;
                }

                --cRxLock;
            }
            else
            {
                break;
            }
        }

        pxQueue->cRxLock = ( ( int8_t ) -1 );
    }
    vPortExitCritical();
}
 

static BaseType_t prvIsQueueEmpty( const Queue_t * pxQueue )
{
    BaseType_t xReturn;

    vPortEnterCritical();
    {
        if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0 )
        {
            xReturn = ( ( BaseType_t ) 1 );
        }
        else
        {
            xReturn = ( ( BaseType_t ) 0 );
        }
    }
    vPortExitCritical();

    return xReturn;
}
 

BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue )
{
    BaseType_t xReturn;
    Queue_t * const pxQueue = xQueue;

    if( ( pxQueue ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

    if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0 )
    {
        xReturn = ( ( BaseType_t ) 1 );
    }
    else
    {
        xReturn = ( ( BaseType_t ) 0 );
    }

    return xReturn;
}  
 

static BaseType_t prvIsQueueFull( const Queue_t * pxQueue )
{
    BaseType_t xReturn;

    vPortEnterCritical();
    {
        if( pxQueue->uxMessagesWaiting == pxQueue->uxLength )
        {
            xReturn = ( ( BaseType_t ) 1 );
        }
        else
        {
            xReturn = ( ( BaseType_t ) 0 );
        }
    }
    vPortExitCritical();

    return xReturn;
}
 

BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue )
{
    BaseType_t xReturn;
    Queue_t * const pxQueue = xQueue;

    if( ( pxQueue ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

    if( pxQueue->uxMessagesWaiting == pxQueue->uxLength )
    {
        xReturn = ( ( BaseType_t ) 1 );
    }
    else
    {
        xReturn = ( ( BaseType_t ) 0 );
    }

    return xReturn;
}  
 

#line 2543 "os\\queue.c"
 

#line 2637 "os\\queue.c"
 

#line 2687 "os\\queue.c"
 

#line 2751 "os\\queue.c"
 

#line 2799 "os\\queue.c"
 

#line 2830 "os\\queue.c"
 

#line 2863 "os\\queue.c"
 



    void vQueueWaitForMessageRestricted( QueueHandle_t xQueue,
                                         TickType_t xTicksToWait,
                                         const BaseType_t xWaitIndefinitely )
    {
        Queue_t * const pxQueue = xQueue;

        





 

        




 
        vPortEnterCritical(); { if( ( pxQueue )->cRxLock == ( ( int8_t ) -1 ) ) { ( pxQueue )->cRxLock = ( ( int8_t ) 0 ); } if( ( pxQueue )->cTxLock == ( ( int8_t ) -1 ) ) { ( pxQueue )->cTxLock = ( ( int8_t ) 0 ); } } vPortExitCritical();

        if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0U )
        {
             
            vTaskPlaceOnEventListRestricted( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait, xWaitIndefinitely );
        }
        else
        {
            ;
        }

        prvUnlockQueue( pxQueue );
    }


 



    QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength )
    {
        QueueSetHandle_t pxQueue;

        pxQueue = xQueueGenericCreate( uxEventQueueLength, ( UBaseType_t ) sizeof( Queue_t * ), ( ( uint8_t ) 0U ) );

        return pxQueue;
    }


 



    BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore,
                               QueueSetHandle_t xQueueSet )
    {
        BaseType_t xReturn;

        vPortEnterCritical();
        {
            if( ( ( Queue_t * ) xQueueOrSemaphore )->pxQueueSetContainer != 0 )
            {
                 
                xReturn = ( ( ( BaseType_t ) 0 ) );
            }
            else if( ( ( Queue_t * ) xQueueOrSemaphore )->uxMessagesWaiting != ( UBaseType_t ) 0 )
            {
                
 
                xReturn = ( ( ( BaseType_t ) 0 ) );
            }
            else
            {
                ( ( Queue_t * ) xQueueOrSemaphore )->pxQueueSetContainer = xQueueSet;
                xReturn = ( ( ( BaseType_t ) 1 ) );
            }
        }
        vPortExitCritical();

        return xReturn;
    }


 



    BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore,
                                    QueueSetHandle_t xQueueSet )
    {
        BaseType_t xReturn;
        Queue_t * const pxQueueOrSemaphore = ( Queue_t * ) xQueueOrSemaphore;

        if( pxQueueOrSemaphore->pxQueueSetContainer != xQueueSet )
        {
             
            xReturn = ( ( ( BaseType_t ) 0 ) );
        }
        else if( pxQueueOrSemaphore->uxMessagesWaiting != ( UBaseType_t ) 0 )
        {
            

 
            xReturn = ( ( ( BaseType_t ) 0 ) );
        }
        else
        {
            vPortEnterCritical();
            {
                 
                pxQueueOrSemaphore->pxQueueSetContainer = 0;
            }
            vPortExitCritical();
            xReturn = ( ( ( BaseType_t ) 1 ) );
        }

        return xReturn;
    }  


 



    QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet,
                                                TickType_t const xTicksToWait )
    {
        QueueSetMemberHandle_t xReturn = 0;

        ( void ) xQueueReceive( ( QueueHandle_t ) xQueueSet, &xReturn, xTicksToWait );  
        return xReturn;
    }


 



    QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet )
    {
        QueueSetMemberHandle_t xReturn = 0;

        ( void ) xQueueReceiveFromISR( ( QueueHandle_t ) xQueueSet, &xReturn, 0 );  
        return xReturn;
    }


 



    static BaseType_t prvNotifyQueueSetContainer( const Queue_t * const pxQueue )
    {
        Queue_t * pxQueueSetContainer = pxQueue->pxQueueSetContainer;
        BaseType_t xReturn = ( ( BaseType_t ) 0 );

         

        

 
        if( ( pxQueueSetContainer ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };  
        if( ( pxQueueSetContainer->uxMessagesWaiting < pxQueueSetContainer->uxLength ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

        if( pxQueueSetContainer->uxMessagesWaiting < pxQueueSetContainer->uxLength )
        {
            const int8_t cTxLock = pxQueueSetContainer->cTxLock;

            ;

             
            xReturn = prvCopyDataToQueue( pxQueueSetContainer, &pxQueue, ( ( BaseType_t ) 0 ) );

            if( cTxLock == ( ( int8_t ) -1 ) )
            {
                if( ( ( ( &( pxQueueSetContainer->xTasksWaitingToReceive ) )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
                {
                    if( xTaskRemoveFromEventList( &( pxQueueSetContainer->xTasksWaitingToReceive ) ) != ( ( BaseType_t ) 0 ) )
                    {
                         
                        xReturn = ( ( BaseType_t ) 1 );
                    }
                    else
                    {
                        ;
                    }
                }
                else
                {
                    ;
                }
            }
            else
            {
                if( ( cTxLock != ( ( int8_t ) 127 ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

                pxQueueSetContainer->cTxLock = ( int8_t ) ( cTxLock + 1 );
            }
        }
        else
        {
            ;
        }

        return xReturn;
    }

