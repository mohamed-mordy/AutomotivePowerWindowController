#line 1 "os\\timers.c"


























 

 
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





 
#line 31 "os\\timers.c"



 


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

 



 

#line 38 "os\\timers.c"
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


 



 
#line 39 "os\\timers.c"
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


 



 

#line 40 "os\\timers.c"
#line 1 ".\\os\\include\\timers.h"


























 










 
#line 40 ".\\os\\include\\timers.h"
 

 



 



 





 
#line 65 ".\\os\\include\\timers.h"













 
struct tmrTimerControl;  
typedef struct tmrTimerControl * TimerHandle_t;



 
typedef void (* TimerCallbackFunction_t)( TimerHandle_t xTimer );




 
typedef void (* PendedFunction_t)( void *,
                                   uint32_t );









































































































































 

    TimerHandle_t xTimerCreate( const char * const pcTimerName,  
                                const TickType_t xTimerPeriodInTicks,
                                const UBaseType_t uxAutoReload,
                                void * const pvTimerID,
                                TimerCallbackFunction_t pxCallbackFunction ) ;



























































































































 
#line 369 ".\\os\\include\\timers.h"




















 
void * pvTimerGetTimerID( const TimerHandle_t xTimer ) ;



















 
void vTimerSetTimerID( TimerHandle_t xTimer,
                       void * pvNewID ) ;



































 
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) ;






 
TaskHandle_t xTimerGetTimerDaemonTaskHandle( void ) ;


















































 










































 
















































































 






































 




























































































































 






















































































 































































 









































































 






















































































 



























































































 
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend,
                                          void * pvParameter1,
                                          uint32_t ulParameter2,
                                          BaseType_t * pxHigherPriorityTaskWoken ) ;
































 
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend,
                                   void * pvParameter1,
                                   uint32_t ulParameter2,
                                   TickType_t xTicksToWait ) ;









 
const char * pcTimerGetName( TimerHandle_t xTimer ) ;  















 
void vTimerSetReloadMode( TimerHandle_t xTimer,
                          const UBaseType_t uxAutoReload ) ;












 
UBaseType_t uxTimerGetReloadMode( TimerHandle_t xTimer ) ;









 
TickType_t xTimerGetPeriod( TimerHandle_t xTimer ) ;













 
TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer ) ;




 
BaseType_t xTimerCreateTimerTask( void ) ;
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer,
                                 const BaseType_t xCommandID,
                                 const TickType_t xOptionalValue,
                                 BaseType_t * const pxHigherPriorityTaskWoken,
                                 const TickType_t xTicksToWait ) ;


    void vTimerSetTimerNumber( TimerHandle_t xTimer,
                               UBaseType_t uxTimerNumber ) ;
    UBaseType_t uxTimerGetTimerNumber( TimerHandle_t xTimer ) ;


#line 1349 ".\\os\\include\\timers.h"

 



 
#line 41 "os\\timers.c"








 






 


 




 




 




 
    typedef struct tmrTimerControl                   
    {
        const char * pcTimerName;                      
        ListItem_t xTimerListItem;                   
        TickType_t xTimerPeriodInTicks;              
        void * pvTimerID;                            
        TimerCallbackFunction_t pxCallbackFunction;  

            UBaseType_t uxTimerNumber;               

        uint8_t ucStatus;                            
    } xTIMER;


 
    typedef xTIMER Timer_t;





 
    typedef struct tmrTimerParameters
    {
        TickType_t xMessageValue;  
        Timer_t * pxTimer;         
    } TimerParameter_t;


    typedef struct tmrCallbackParameters
    {
        PendedFunction_t pxCallbackFunction;  
        void * pvParameter1;                  
        uint32_t ulParameter2;                
    } CallbackParameters_t;


 
    typedef struct tmrTimerQueueMessage
    {
        BaseType_t xMessageID;  
        union
        {
            TimerParameter_t xTimerParameters;

            
 

                CallbackParameters_t xCallbackParameters;

        } u;
    } DaemonTaskMessage_t;


 






 
     static List_t xActiveTimerList1;
     static List_t xActiveTimerList2;
     static List_t * pxCurrentTimerList;
     static List_t * pxOverflowTimerList;

 
     static QueueHandle_t xTimerQueue = 0;
     static TaskHandle_t xTimerTaskHandle = 0;

 

 




 
    static void prvCheckForValidListAndQueue( void ) ;





 
    static void prvTimerTask( void * pvParameters ) ;




 
    static void prvProcessReceivedCommands( void ) ;




 
    static BaseType_t prvInsertTimerInActiveList( Timer_t * const pxTimer,
                                                  const TickType_t xNextExpiryTime,
                                                  const TickType_t xTimeNow,
                                                  const TickType_t xCommandTime ) ;





 
    static void prvReloadTimer( Timer_t * const pxTimer,
                                TickType_t xExpiredTime,
                                const TickType_t xTimeNow ) ;




 
    static void prvProcessExpiredTimer( const TickType_t xNextExpireTime,
                                        const TickType_t xTimeNow ) ;




 
    static void prvSwitchTimerLists( void ) ;




 
    static TickType_t prvSampleTimeNow( BaseType_t * const pxTimerListsWereSwitched ) ;






 
    static TickType_t prvGetNextExpireTime( BaseType_t * const pxListWasEmpty ) ;




 
    static void prvProcessTimerOrBlockTask( const TickType_t xNextExpireTime,
                                            BaseType_t xListWasEmpty ) ;




 
    static void prvInitialiseNewTimer( const char * const pcTimerName,  
                                       const TickType_t xTimerPeriodInTicks,
                                       const UBaseType_t uxAutoReload,
                                       void * const pvTimerID,
                                       TimerCallbackFunction_t pxCallbackFunction,
                                       Timer_t * pxNewTimer ) ;
 

    BaseType_t xTimerCreateTimerTask( void )
    {
        BaseType_t xReturn = ( ( ( BaseType_t ) 0 ) );

        


 
        prvCheckForValidListAndQueue();

        if( xTimerQueue != 0 )
        {
#line 266 "os\\timers.c"
                {
                    xReturn = xTaskCreate( prvTimerTask,
                                           "Tmr Svc",
                                           (((uint16_t)128) * 2),
                                           0,
                                           ( ( UBaseType_t ) 2 ) | ( ( UBaseType_t ) 0x00 ),
                                           &xTimerTaskHandle );
                }

        }
        else
        {
            ;
        }

        if( ( xReturn ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
        return xReturn;
    }
 



        TimerHandle_t xTimerCreate( const char * const pcTimerName,  
                                    const TickType_t xTimerPeriodInTicks,
                                    const UBaseType_t uxAutoReload,
                                    void * const pvTimerID,
                                    TimerCallbackFunction_t pxCallbackFunction )
        {
            Timer_t * pxNewTimer;

            pxNewTimer = ( Timer_t * ) pvPortMalloc( sizeof( Timer_t ) );  

            if( pxNewTimer != 0 )
            {
                

 
                pxNewTimer->ucStatus = 0x00;
                prvInitialiseNewTimer( pcTimerName, xTimerPeriodInTicks, uxAutoReload, pvTimerID, pxCallbackFunction, pxNewTimer );
            }

            return pxNewTimer;
        }


 

#line 353 "os\\timers.c"
 

    static void prvInitialiseNewTimer( const char * const pcTimerName,  
                                       const TickType_t xTimerPeriodInTicks,
                                       const UBaseType_t uxAutoReload,
                                       void * const pvTimerID,
                                       TimerCallbackFunction_t pxCallbackFunction,
                                       Timer_t * pxNewTimer )
    {
         
        if( ( ( xTimerPeriodInTicks > 0 ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

        
 
        prvCheckForValidListAndQueue();

        
 
        pxNewTimer->pcTimerName = pcTimerName;
        pxNewTimer->xTimerPeriodInTicks = xTimerPeriodInTicks;
        pxNewTimer->pvTimerID = pvTimerID;
        pxNewTimer->pxCallbackFunction = pxCallbackFunction;
        vListInitialiseItem( &( pxNewTimer->xTimerListItem ) );

        if( uxAutoReload != ( ( BaseType_t ) 0 ) )
        {
            pxNewTimer->ucStatus |= ( ( uint8_t ) 0x04 );
        }

        ;
    }
 

    BaseType_t xTimerGenericCommand( TimerHandle_t xTimer,
                                     const BaseType_t xCommandID,
                                     const TickType_t xOptionalValue,
                                     BaseType_t * const pxHigherPriorityTaskWoken,
                                     const TickType_t xTicksToWait )
    {
        BaseType_t xReturn = ( ( ( BaseType_t ) 0 ) );
        DaemonTaskMessage_t xMessage;

        if( ( xTimer ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

        
 
        if( xTimerQueue != 0 )
        {
             
            xMessage.xMessageID = xCommandID;
            xMessage.u.xTimerParameters.xMessageValue = xOptionalValue;
            xMessage.u.xTimerParameters.pxTimer = xTimer;

            if( xCommandID < ( ( BaseType_t ) 6 ) )
            {
                if( xTaskGetSchedulerState() == ( ( BaseType_t ) 2 ) )
                {
                    xReturn = xQueueGenericSend( ( xTimerQueue ), ( &xMessage ), ( xTicksToWait ), ( ( BaseType_t ) 0 ) );
                }
                else
                {
                    xReturn = xQueueGenericSend( ( xTimerQueue ), ( &xMessage ), ( ( ( TickType_t ) 0U ) ), ( ( BaseType_t ) 0 ) );
                }
            }
            else
            {
                xReturn = xQueueGenericSendFromISR( ( xTimerQueue ), ( &xMessage ), ( pxHigherPriorityTaskWoken ), ( ( BaseType_t ) 0 ) );
            }

            ;
        }
        else
        {
            ;
        }

        return xReturn;
    }
 

    TaskHandle_t xTimerGetTimerDaemonTaskHandle( void )
    {
        
 
        if( ( ( xTimerTaskHandle != 0 ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
        return xTimerTaskHandle;
    }
 

    TickType_t xTimerGetPeriod( TimerHandle_t xTimer )
    {
        Timer_t * pxTimer = xTimer;

        if( ( xTimer ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
        return pxTimer->xTimerPeriodInTicks;
    }
 

    void vTimerSetReloadMode( TimerHandle_t xTimer,
                              const UBaseType_t uxAutoReload )
    {
        Timer_t * pxTimer = xTimer;

        if( ( xTimer ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
        vPortEnterCritical();
        {
            if( uxAutoReload != ( ( BaseType_t ) 0 ) )
            {
                pxTimer->ucStatus |= ( ( uint8_t ) 0x04 );
            }
            else
            {
                pxTimer->ucStatus &= ( ( uint8_t ) ~( ( uint8_t ) 0x04 ) );
            }
        }
        vPortExitCritical();
    }
 

    UBaseType_t uxTimerGetReloadMode( TimerHandle_t xTimer )
    {
        Timer_t * pxTimer = xTimer;
        UBaseType_t uxReturn;

        if( ( xTimer ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
        vPortEnterCritical();
        {
            if( ( pxTimer->ucStatus & ( ( uint8_t ) 0x04 ) ) == 0 )
            {
                 
                uxReturn = ( UBaseType_t ) ( ( BaseType_t ) 0 );
            }
            else
            {
                 
                uxReturn = ( UBaseType_t ) ( ( BaseType_t ) 1 );
            }
        }
        vPortExitCritical();

        return uxReturn;
    }
 

    TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer )
    {
        Timer_t * pxTimer = xTimer;
        TickType_t xReturn;

        if( ( xTimer ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
        xReturn = ( ( &( pxTimer->xTimerListItem ) )->xItemValue );
        return xReturn;
    }
 

    const char * pcTimerGetName( TimerHandle_t xTimer )  
    {
        Timer_t * pxTimer = xTimer;

        if( ( xTimer ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
        return pxTimer->pcTimerName;
    }
 

    static void prvReloadTimer( Timer_t * const pxTimer,
                                TickType_t xExpiredTime,
                                const TickType_t xTimeNow )
    {
        

 
        while( prvInsertTimerInActiveList( pxTimer, ( xExpiredTime + pxTimer->xTimerPeriodInTicks ), xTimeNow, xExpiredTime ) != ( ( BaseType_t ) 0 ) )
        {
             
            xExpiredTime += pxTimer->xTimerPeriodInTicks;

             
            ;
            pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
        }
    }
 

    static void prvProcessExpiredTimer( const TickType_t xNextExpireTime,
                                        const TickType_t xTimeNow )
    {
        Timer_t * const pxTimer = ( Timer_t * ) ( ( &( ( pxCurrentTimerList )->xListEnd ) )->pxNext->pvOwner );  

        
 

        ( void ) uxListRemove( &( pxTimer->xTimerListItem ) );

        
 
        if( ( pxTimer->ucStatus & ( ( uint8_t ) 0x04 ) ) != 0 )
        {
            prvReloadTimer( pxTimer, xNextExpireTime, xTimeNow );
        }
        else
        {
            pxTimer->ucStatus &= ( ( uint8_t ) ~( ( uint8_t ) 0x01 ) );
        }

         
        ;
        pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
    }
 

    static void prvTimerTask( void * pvParameters )
    {
        TickType_t xNextExpireTime;
        BaseType_t xListWasEmpty;

         
        ( void ) pvParameters;

#line 582 "os\\timers.c"

        for( ; ; )
        {
            
 
            xNextExpireTime = prvGetNextExpireTime( &xListWasEmpty );

            
 
            prvProcessTimerOrBlockTask( xNextExpireTime, xListWasEmpty );

             
            prvProcessReceivedCommands();
        }
    }
 

    static void prvProcessTimerOrBlockTask( const TickType_t xNextExpireTime,
                                            BaseType_t xListWasEmpty )
    {
        TickType_t xTimeNow;
        BaseType_t xTimerListsWereSwitched;

        vTaskSuspendAll();
        {
            



 
            xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );

            if( xTimerListsWereSwitched == ( ( BaseType_t ) 0 ) )
            {
                 
                if( ( xListWasEmpty == ( ( BaseType_t ) 0 ) ) && ( xNextExpireTime <= xTimeNow ) )
                {
                    ( void ) xTaskResumeAll();
                    prvProcessExpiredTimer( xNextExpireTime, xTimeNow );
                }
                else
                {
                    




 
                    if( xListWasEmpty != ( ( BaseType_t ) 0 ) )
                    {
                        
 
                        xListWasEmpty = ( ( ( pxOverflowTimerList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) );
                    }

                    vQueueWaitForMessageRestricted( xTimerQueue, ( xNextExpireTime - xTimeNow ), xListWasEmpty );

                    if( xTaskResumeAll() == ( ( BaseType_t ) 0 ) )
                    {
                        


 
                        { ( *( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
                    }
                    else
                    {
                        ;
                    }
                }
            }
            else
            {
                ( void ) xTaskResumeAll();
            }
        }
    }
 

    static TickType_t prvGetNextExpireTime( BaseType_t * const pxListWasEmpty )
    {
        TickType_t xNextExpireTime;

        





 
        *pxListWasEmpty = ( ( ( pxCurrentTimerList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) );

        if( *pxListWasEmpty == ( ( BaseType_t ) 0 ) )
        {
            xNextExpireTime = ( ( ( pxCurrentTimerList )->xListEnd ). pxNext->xItemValue );
        }
        else
        {
             
            xNextExpireTime = ( TickType_t ) 0U;
        }

        return xNextExpireTime;
    }
 

    static TickType_t prvSampleTimeNow( BaseType_t * const pxTimerListsWereSwitched )
    {
        TickType_t xTimeNow;
         static TickType_t xLastTime = ( TickType_t ) 0U;  

        xTimeNow = xTaskGetTickCount();

        if( xTimeNow < xLastTime )
        {
            prvSwitchTimerLists();
            *pxTimerListsWereSwitched = ( ( BaseType_t ) 1 );
        }
        else
        {
            *pxTimerListsWereSwitched = ( ( BaseType_t ) 0 );
        }

        xLastTime = xTimeNow;

        return xTimeNow;
    }
 

    static BaseType_t prvInsertTimerInActiveList( Timer_t * const pxTimer,
                                                  const TickType_t xNextExpiryTime,
                                                  const TickType_t xTimeNow,
                                                  const TickType_t xCommandTime )
    {
        BaseType_t xProcessTimerNow = ( ( BaseType_t ) 0 );

        ( ( &( pxTimer->xTimerListItem ) )->xItemValue = ( xNextExpiryTime ) );
        ( ( &( pxTimer->xTimerListItem ) )->pvOwner = ( void * ) ( pxTimer ) );

        if( xNextExpiryTime <= xTimeNow )
        {
            
 
            if( ( ( TickType_t ) ( xTimeNow - xCommandTime ) ) >= pxTimer->xTimerPeriodInTicks )  
            {
                
 
                xProcessTimerNow = ( ( BaseType_t ) 1 );
            }
            else
            {
                vListInsert( pxOverflowTimerList, &( pxTimer->xTimerListItem ) );
            }
        }
        else
        {
            if( ( xTimeNow < xCommandTime ) && ( xNextExpiryTime >= xCommandTime ) )
            {
                

 
                xProcessTimerNow = ( ( BaseType_t ) 1 );
            }
            else
            {
                vListInsert( pxCurrentTimerList, &( pxTimer->xTimerListItem ) );
            }
        }

        return xProcessTimerNow;
    }
 

    static void prvProcessReceivedCommands( void )
    {
        DaemonTaskMessage_t xMessage;
        Timer_t * pxTimer;
        BaseType_t xTimerListsWereSwitched;
        TickType_t xTimeNow;

        while( xQueueReceive( xTimerQueue, &xMessage, ( ( TickType_t ) 0U ) ) != ( ( ( BaseType_t ) 0 ) ) )  
        {

                {
                    
 
                    if( xMessage.xMessageID < ( BaseType_t ) 0 )
                    {
                        const CallbackParameters_t * const pxCallback = &( xMessage.u.xCallbackParameters );

                        
 
                        if( ( pxCallback ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

                         
                        pxCallback->pxCallbackFunction( pxCallback->pvParameter1, pxCallback->ulParameter2 );
                    }
                    else
                    {
                        ;
                    }
                }


            
 
            if( xMessage.xMessageID >= ( BaseType_t ) 0 )
            {
                
 
                pxTimer = xMessage.u.xTimerParameters.pxTimer;

                if( ( ( ( &( pxTimer->xTimerListItem ) )->pvContainer == ( 0 ) ) ? ( ( ( BaseType_t ) 1 ) ) : ( ( ( BaseType_t ) 0 ) ) ) == ( ( BaseType_t ) 0 ) )  
                {
                     
                    ( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
                }
                else
                {
                    ;
                }

                ;

                




 
                xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );

                switch( xMessage.xMessageID )
                {
                    case ( ( BaseType_t ) 1 ):
                    case ( ( BaseType_t ) 6 ):
                    case ( ( BaseType_t ) 2 ):
                    case ( ( BaseType_t ) 7 ):
                         
                        pxTimer->ucStatus |= ( ( uint8_t ) 0x01 );

                        if( prvInsertTimerInActiveList( pxTimer, xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, xTimeNow, xMessage.u.xTimerParameters.xMessageValue ) != ( ( BaseType_t ) 0 ) )
                        {
                            
 
                            if( ( pxTimer->ucStatus & ( ( uint8_t ) 0x04 ) ) != 0 )
                            {
                                prvReloadTimer( pxTimer, xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, xTimeNow );
                            }
                            else
                            {
                                pxTimer->ucStatus &= ( ( uint8_t ) ~( ( uint8_t ) 0x01 ) );
                            }

                             
                            ;
                            pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
                        }
                        else
                        {
                            ;
                        }

                        break;

                    case ( ( BaseType_t ) 3 ):
                    case ( ( BaseType_t ) 8 ):
                         
                        pxTimer->ucStatus &= ( ( uint8_t ) ~( ( uint8_t ) 0x01 ) );
                        break;

                    case ( ( BaseType_t ) 4 ):
                    case ( ( BaseType_t ) 9 ):
                        pxTimer->ucStatus |= ( ( uint8_t ) 0x01 );
                        pxTimer->xTimerPeriodInTicks = xMessage.u.xTimerParameters.xMessageValue;
                        if( ( ( pxTimer->xTimerPeriodInTicks > 0 ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

                        




 
                        ( void ) prvInsertTimerInActiveList( pxTimer, ( xTimeNow + pxTimer->xTimerPeriodInTicks ), xTimeNow, xTimeNow );
                        break;

                    case ( ( BaseType_t ) 5 ):

                            {
                                

 
                                if( ( pxTimer->ucStatus & ( ( uint8_t ) 0x02 ) ) == ( uint8_t ) 0 )
                                {
                                    vPortFree( pxTimer );
                                }
                                else
                                {
                                    pxTimer->ucStatus &= ( ( uint8_t ) ~( ( uint8_t ) 0x01 ) );
                                }
                            }
#line 892 "os\\timers.c"
                        break;

                    default:
                         
                        break;
                }
            }
        }
    }
 

    static void prvSwitchTimerLists( void )
    {
        TickType_t xNextExpireTime;
        List_t * pxTemp;

        


 
        while( ( ( ( pxCurrentTimerList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
        {
            xNextExpireTime = ( ( ( pxCurrentTimerList )->xListEnd ). pxNext->xItemValue );

            

 
            prvProcessExpiredTimer( xNextExpireTime, ( ( TickType_t ) -1 ) );
        }

        pxTemp = pxCurrentTimerList;
        pxCurrentTimerList = pxOverflowTimerList;
        pxOverflowTimerList = pxTemp;
    }
 

    static void prvCheckForValidListAndQueue( void )
    {
        

 
        vPortEnterCritical();
        {
            if( xTimerQueue == 0 )
            {
                vListInitialise( &xActiveTimerList1 );
                vListInitialise( &xActiveTimerList2 );
                pxCurrentTimerList = &xActiveTimerList1;
                pxOverflowTimerList = &xActiveTimerList2;

#line 952 "os\\timers.c"
                    {
                        xTimerQueue = xQueueGenericCreate( ( ( UBaseType_t ) 5 ), ( sizeof( DaemonTaskMessage_t ) ), ( ( ( uint8_t ) 0U ) ) );
                    }


#line 969 "os\\timers.c"
            }
            else
            {
                ;
            }
        }
        vPortExitCritical();
    }
 

    BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer )
    {
        BaseType_t xReturn;
        Timer_t * pxTimer = xTimer;

        if( ( xTimer ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

         
        vPortEnterCritical();
        {
            if( ( pxTimer->ucStatus & ( ( uint8_t ) 0x01 ) ) == 0 )
            {
                xReturn = ( ( BaseType_t ) 0 );
            }
            else
            {
                xReturn = ( ( BaseType_t ) 1 );
            }
        }
        vPortExitCritical();

        return xReturn;
    }  
 

    void * pvTimerGetTimerID( const TimerHandle_t xTimer )
    {
        Timer_t * const pxTimer = xTimer;
        void * pvReturn;

        if( ( xTimer ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

        vPortEnterCritical();
        {
            pvReturn = pxTimer->pvTimerID;
        }
        vPortExitCritical();

        return pvReturn;
    }
 

    void vTimerSetTimerID( TimerHandle_t xTimer,
                           void * pvNewID )
    {
        Timer_t * const pxTimer = xTimer;

        if( ( xTimer ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

        vPortEnterCritical();
        {
            pxTimer->pvTimerID = pvNewID;
        }
        vPortExitCritical();
    }
 



        BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend,
                                                  void * pvParameter1,
                                                  uint32_t ulParameter2,
                                                  BaseType_t * pxHigherPriorityTaskWoken )
        {
            DaemonTaskMessage_t xMessage;
            BaseType_t xReturn;

            
 
            xMessage.xMessageID = ( ( BaseType_t ) -2 );
            xMessage.u.xCallbackParameters.pxCallbackFunction = xFunctionToPend;
            xMessage.u.xCallbackParameters.pvParameter1 = pvParameter1;
            xMessage.u.xCallbackParameters.ulParameter2 = ulParameter2;

            xReturn = xQueueGenericSendFromISR( ( xTimerQueue ), ( &xMessage ), ( pxHigherPriorityTaskWoken ), ( ( BaseType_t ) 0 ) );

            ;

            return xReturn;
        }


 



        BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend,
                                           void * pvParameter1,
                                           uint32_t ulParameter2,
                                           TickType_t xTicksToWait )
        {
            DaemonTaskMessage_t xMessage;
            BaseType_t xReturn;

            

 
            if( ( xTimerQueue ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

            
 
            xMessage.xMessageID = ( ( BaseType_t ) -1 );
            xMessage.u.xCallbackParameters.pxCallbackFunction = xFunctionToPend;
            xMessage.u.xCallbackParameters.pvParameter1 = pvParameter1;
            xMessage.u.xCallbackParameters.ulParameter2 = ulParameter2;

            xReturn = xQueueGenericSend( ( xTimerQueue ), ( &xMessage ), ( xTicksToWait ), ( ( BaseType_t ) 0 ) );

            ;

            return xReturn;
        }


 



        UBaseType_t uxTimerGetTimerNumber( TimerHandle_t xTimer )
        {
            return ( ( Timer_t * ) xTimer )->uxTimerNumber;
        }


 



        void vTimerSetTimerNumber( TimerHandle_t xTimer,
                                   UBaseType_t uxTimerNumber )
        {
            ( ( Timer_t * ) xTimer )->uxTimerNumber = uxTimerNumber;
        }


 



 
