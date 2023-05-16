#line 1 "os\\port.c"


























 



 

 
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

 



 

#line 35 "os\\port.c"
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


 



 
#line 36 "os\\port.c"











     
#line 55 "os\\port.c"





 




 




 







 







 
#line 95 "os\\port.c"

 


 



 



 




 



 






 
void vPortSetupTimerInterrupt( void );



 
void PendSV_Handler( void );
void SysTick_Handler( void );
void SVC_Handler( void );



 
static void prvStartFirstTask( void );



 
static void prvEnableVFP( void );



 
static void prvTaskExitError( void );

 


 
static UBaseType_t uxCriticalNesting = 0xaaaaaaaa;



 

    static uint32_t ulTimerCountsForOneTick = 0;





 

    static uint32_t xMaximumPossibleSuppressedTicks = 0;





 

    static uint32_t ulStoppedTimerCompensation = 0;






 

    static uint8_t ucMaxSysCallPriority = 0;
    static uint32_t ulMaxPRIGROUPValue = 0;
    static const volatile uint8_t * const pcInterruptPriorityRegisters = ( uint8_t * ) ( 0xE000E3F0 );


 



 
StackType_t * pxPortInitialiseStack( StackType_t * pxTopOfStack,
                                     TaskFunction_t pxCode,
                                     void * pvParameters )
{
    
 

    
 
    pxTopOfStack--;

    *pxTopOfStack = ( 0x01000000 );                                     
    pxTopOfStack--;
    *pxTopOfStack = ( ( StackType_t ) pxCode ) & ( ( StackType_t ) 0xfffffffeUL );  
    pxTopOfStack--;
    *pxTopOfStack = ( StackType_t ) prvTaskExitError;                     

     
    pxTopOfStack -= 5;                             
    *pxTopOfStack = ( StackType_t ) pvParameters;  

    
 
    pxTopOfStack--;
    *pxTopOfStack = ( 0xfffffffd );

    pxTopOfStack -= 8;  

    return pxTopOfStack;
}
 

static void prvTaskExitError( void )
{
    




 
    if( ( uxCriticalNesting == ~0UL ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
    vPortRaiseBASEPRI();

    for( ; ; )
    {
    }
}
 

__asm void SVC_Handler( void )
{
 
    PRESERVE8

     
    ldr r3, =pxCurrentTCB
    ldr r1, [ r3 ]
    ldr r0, [ r1 ]
     
    ldmia r0!, {r4-r11,r14}
    msr psp, r0
    isb
    mov r0, #0
    msr basepri, r0
    bx r14
 
}
 

__asm void prvStartFirstTask( void )
{
 
    PRESERVE8

     
    ldr r0, =0xE000ED08
    ldr r0, [ r0 ]
    ldr r0, [ r0 ]
     
    msr msp, r0

    


 
    mov r0, #0
    msr control, r0
     
    cpsie i
    cpsie f
    dsb
    isb
     
    svc 0
    nop
    nop
 
}
 

__asm void prvEnableVFP( void )
{
 
    PRESERVE8

     
    ldr.w r0, =0xE000ED88
    ldr r1, [ r0 ]

     
    orr r1, r1, #( 0xf << 20 )
    str r1, [ r0 ]
    bx r14
    nop
 
}
 



 
BaseType_t xPortStartScheduler( void )
{
    
 
    if( ( (5 << (8 - 3)) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

    

 
    if( ( ( *( ( volatile uint32_t * ) 0xE000ed00 ) ) != ( 0x410FC271UL ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
    if( ( ( *( ( volatile uint32_t * ) 0xE000ed00 ) ) != ( 0x410FC270UL ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };


        {
            volatile uint32_t ulOriginalPriority;
            volatile uint8_t * const pucFirstUserPriorityRegister = ( uint8_t * ) ( ( 0xE000E3F0 ) + ( 16 ) );
            volatile uint8_t ucMaxPriorityValue;

            




 
            ulOriginalPriority = *pucFirstUserPriorityRegister;

            
 
            *pucFirstUserPriorityRegister = ( ( uint8_t ) 0xff );

             
            ucMaxPriorityValue = *pucFirstUserPriorityRegister;

            
 
            if( ( ucMaxPriorityValue == ( (0x07 << (8 - 3)) & ucMaxPriorityValue ) ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };

             
            ucMaxSysCallPriority = (5 << (8 - 3)) & ucMaxPriorityValue;

            
 
            ulMaxPRIGROUPValue = ( ( uint8_t ) 7 );

            while( ( ucMaxPriorityValue & ( ( uint8_t ) 0x80 ) ) == ( ( uint8_t ) 0x80 ) )
            {
                ulMaxPRIGROUPValue--;
                ucMaxPriorityValue <<= ( uint8_t ) 0x01;
            }

#line 372 "os\\port.c"


                {
                    

 
                    if( ( ( ( ( uint8_t ) 7 ) - ulMaxPRIGROUPValue ) == 3 ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
                }


            
 
            ulMaxPRIGROUPValue <<= ( 8UL );
            ulMaxPRIGROUPValue &= ( 0x07UL << 8UL );

            
 
            *pucFirstUserPriorityRegister = ulOriginalPriority;
        }


     
    ( *( ( volatile uint32_t * ) 0xe000ed20 ) ) |= ( ( ( uint32_t ) (0x07 << (8 - 3)) ) << 16UL );
    ( *( ( volatile uint32_t * ) 0xe000ed20 ) ) |= ( ( ( uint32_t ) (0x07 << (8 - 3)) ) << 24UL );

    
 
    vPortSetupTimerInterrupt();

     
    uxCriticalNesting = 0;

     
    prvEnableVFP();

     
    *( ( ( volatile uint32_t * ) 0xe000ef34 ) ) |= ( 0x3UL << 30UL );

     
    prvStartFirstTask();

     
    return 0;
}
 

void vPortEndScheduler( void )
{
    
 
    if( ( uxCriticalNesting == 1000UL ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
}
 

void vPortEnterCritical( void )
{
    vPortRaiseBASEPRI();
    uxCriticalNesting++;

    



 
    if( uxCriticalNesting == 1 )
    {
        if( ( ( ( *( ( volatile uint32_t * ) 0xe000ed04 ) ) & ( 0xFFUL ) ) == 0 ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
    }
}
 

void vPortExitCritical( void )
{
    if( ( uxCriticalNesting ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
    uxCriticalNesting--;

    if( uxCriticalNesting == 0 )
    {
        vPortSetBASEPRI( 0 );
    }
}
 

__asm void PendSV_Handler( void )
{
    extern uxCriticalNesting;
    extern pxCurrentTCB;
    extern vTaskSwitchContext;

 
    PRESERVE8

    mrs r0, psp
    isb
     
    ldr r3, =pxCurrentTCB
    ldr r2, [ r3 ]

     
    tst r14, #0x10
    it eq
    vstmdbeq r0!, {s16-s31}

     
    stmdb r0!, {r4-r11, r14}

     
    str r0, [ r2 ]

    stmdb sp!, {r0, r3}
    mov r0, #(5 << (8 - 3))
    msr basepri, r0
    dsb
    isb
    bl vTaskSwitchContext
    mov r0, #0
    msr basepri, r0
    ldmia sp!, {r0, r3}

     
    ldr r1, [ r3 ]
    ldr r0, [ r1 ]

     
    ldmia r0!, {r4-r11, r14}

    
 
    tst r14, #0x10
    it eq
    vldmiaeq r0!, {s16-s31}

    msr psp, r0
    isb
#line 513 "os\\port.c"

    bx r14
 
}
 

void SysTick_Handler( void )
{
    



 
    vPortRaiseBASEPRI();
    {
         
        if( xTaskIncrementTick() != ( ( BaseType_t ) 0 ) )
        {
            
 
            ( *( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL );
        }
    }

    vPortClearBASEPRIFromISR();
}
 



    __weak void vPortSuppressTicksAndSleep( TickType_t xExpectedIdleTime )
    {
        uint32_t ulReloadValue, ulCompleteTickPeriods, ulCompletedSysTickDecrements;
        TickType_t xModifiableIdleTime;

         
        if( xExpectedIdleTime > xMaximumPossibleSuppressedTicks )
        {
            xExpectedIdleTime = xMaximumPossibleSuppressedTicks;
        }

        


 
        ( *( ( volatile uint32_t * ) 0xe000e010 ) ) &= ~( 1UL << 0UL );

        

 
        ulReloadValue = ( *( ( volatile uint32_t * ) 0xe000e018 ) ) + ( ulTimerCountsForOneTick * ( xExpectedIdleTime - 1UL ) );

        if( ulReloadValue > ulStoppedTimerCompensation )
        {
            ulReloadValue -= ulStoppedTimerCompensation;
        }

        
 
        __disable_irq();
        __dsb( ( 15 ) );
        __isb( ( 15 ) );

        
 
        if( eTaskConfirmSleepModeStatus() == eAbortSleep )
        {
            
 
            ( *( ( volatile uint32_t * ) 0xe000e014 ) ) = ( *( ( volatile uint32_t * ) 0xe000e018 ) );

             
            ( *( ( volatile uint32_t * ) 0xe000e010 ) ) |= ( 1UL << 0UL );

            
 
            ( *( ( volatile uint32_t * ) 0xe000e014 ) ) = ulTimerCountsForOneTick - 1UL;

            
 
            __enable_irq();
        }
        else
        {
             
            ( *( ( volatile uint32_t * ) 0xe000e014 ) ) = ulReloadValue;

            
 
            ( *( ( volatile uint32_t * ) 0xe000e018 ) ) = 0UL;

             
            ( *( ( volatile uint32_t * ) 0xe000e010 ) ) |= ( 1UL << 0UL );

            



 
            xModifiableIdleTime = xExpectedIdleTime;
            ;

            if( xModifiableIdleTime > 0 )
            {
                __dsb( ( 15 ) );
                __wfi();
                __isb( ( 15 ) );
            }

            ;

            

 
            __enable_irq();
            __dsb( ( 15 ) );
            __isb( ( 15 ) );

            


 
            __disable_irq();
            __dsb( ( 15 ) );
            __isb( ( 15 ) );

            





 
            ( *( ( volatile uint32_t * ) 0xe000e010 ) ) = ( ( 1UL << 2UL ) | ( 1UL << 1UL ) );

            



 
            if( ( ( *( ( volatile uint32_t * ) 0xe000e010 ) ) & ( 1UL << 16UL ) ) != 0 )
            {
                uint32_t ulCalculatedLoadValue;

                


 
                ulCalculatedLoadValue = ( ulTimerCountsForOneTick - 1UL ) - ( ulReloadValue - ( *( ( volatile uint32_t * ) 0xe000e018 ) ) );

                

 
                if( ( ulCalculatedLoadValue < ulStoppedTimerCompensation ) || ( ulCalculatedLoadValue > ulTimerCountsForOneTick ) )
                {
                    ulCalculatedLoadValue = ( ulTimerCountsForOneTick - 1UL );
                }

                ( *( ( volatile uint32_t * ) 0xe000e014 ) ) = ulCalculatedLoadValue;

                

 
                ulCompleteTickPeriods = xExpectedIdleTime - 1UL;
            }
            else
            {
                


 
                ulCompletedSysTickDecrements = ( xExpectedIdleTime * ulTimerCountsForOneTick ) - ( *( ( volatile uint32_t * ) 0xe000e018 ) );

                
 
                ulCompleteTickPeriods = ulCompletedSysTickDecrements / ulTimerCountsForOneTick;

                
 
                ( *( ( volatile uint32_t * ) 0xe000e014 ) ) = ( ( ulCompleteTickPeriods + 1UL ) * ulTimerCountsForOneTick ) - ulCompletedSysTickDecrements;
            }

            

 
            ( *( ( volatile uint32_t * ) 0xe000e018 ) ) = 0UL;
            ( *( ( volatile uint32_t * ) 0xe000e010 ) ) |= ( 1UL << 0UL );
            vTaskStepTick( ulCompleteTickPeriods );
            ( *( ( volatile uint32_t * ) 0xe000e014 ) ) = ulTimerCountsForOneTick - 1UL;

             
            __enable_irq();
        }
    }



 




 


    __weak void vPortSetupTimerInterrupt( void )
    {
         

            {
                ulTimerCountsForOneTick = ( (SystemCoreClock) / ((TickType_t)1000) );
                xMaximumPossibleSuppressedTicks = ( 0xffffffUL ) / ulTimerCountsForOneTick;
                ulStoppedTimerCompensation = ( 45UL ) / ( (SystemCoreClock) / (SystemCoreClock) );
            }


         
        ( *( ( volatile uint32_t * ) 0xe000e010 ) ) = 0UL;
        ( *( ( volatile uint32_t * ) 0xe000e018 ) ) = 0UL;

         
        ( *( ( volatile uint32_t * ) 0xe000e014 ) ) = ( (SystemCoreClock) / ((TickType_t)1000) ) - 1UL;
        ( *( ( volatile uint32_t * ) 0xe000e010 ) ) = ( ( 1UL << 2UL ) | ( 1UL << 1UL ) | ( 1UL << 0UL ) );
    }


 

__asm uint32_t vPortGetIPSR( void )
{
 
    PRESERVE8

    mrs r0, ipsr
    bx r14
 
}
 



    void vPortValidateInterruptPriority( void )
    {
        uint32_t ulCurrentInterrupt;
        uint8_t ucCurrentPriority;

         
        ulCurrentInterrupt = vPortGetIPSR();

         
        if( ulCurrentInterrupt >= ( 16 ) )
        {
             
            ucCurrentPriority = pcInterruptPriorityRegisters[ ulCurrentInterrupt ];

            





















 
            if( ( ucCurrentPriority >= ucMaxSysCallPriority ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
        }

        











 
        if( ( ( ( *( ( volatile uint32_t * ) 0xE000ED0C ) ) & ( 0x07UL << 8UL ) ) <= ulMaxPRIGROUPValue ) == 0 ) { vPortRaiseBASEPRI(); for( ;; ); };
    }

