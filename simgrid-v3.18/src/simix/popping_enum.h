/**********************************************************************/
/* File generated by src/simix/simcalls.py from src/simix/simcalls.in */
/*                                                                    */
/*                    DO NOT EVER CHANGE THIS FILE                    */
/*                                                                    */
/* change simcalls specification in src/simix/simcalls.in             */
/* Copyright (c) 2014-2017. The SimGrid Team. All rights reserved.    */
/**********************************************************************/

/*
 * Note that the name comes from http://en.wikipedia.org/wiki/Popping
 * Indeed, the control flow is doing a strange dance in there.
 *
 * That's not about http://en.wikipedia.org/wiki/Poop, despite the odor :)
 */

/**
 * @brief All possible simcalls.
 */
typedef enum {
  SIMCALL_NONE,
  SIMCALL_PROCESS_KILLALL,
  SIMCALL_PROCESS_CLEANUP,
  SIMCALL_PROCESS_SUSPEND,
  SIMCALL_PROCESS_JOIN,
  SIMCALL_PROCESS_SLEEP,
  SIMCALL_EXECUTION_START,
  SIMCALL_EXECUTION_PARALLEL_START,
  SIMCALL_EXECUTION_WAIT,
  SIMCALL_EXECUTION_TEST,
  SIMCALL_PROCESS_ON_EXIT,
  SIMCALL_COMM_IPROBE,
  SIMCALL_COMM_SEND,
  SIMCALL_COMM_ISEND,
  SIMCALL_COMM_RECV,
  SIMCALL_COMM_IRECV,
  SIMCALL_COMM_WAITANY,
  SIMCALL_COMM_WAIT,
  SIMCALL_COMM_TEST,
  SIMCALL_COMM_TESTANY,
  SIMCALL_MUTEX_LOCK,
  SIMCALL_MUTEX_TRYLOCK,
  SIMCALL_MUTEX_UNLOCK,
  SIMCALL_COND_INIT,
  SIMCALL_COND_SIGNAL,
  SIMCALL_COND_WAIT,
  SIMCALL_COND_WAIT_TIMEOUT,
  SIMCALL_COND_BROADCAST,
  SIMCALL_SEM_ACQUIRE,
  SIMCALL_SEM_ACQUIRE_TIMEOUT,
  SIMCALL_STORAGE_READ,
  SIMCALL_STORAGE_WRITE,
  SIMCALL_MC_RANDOM,
  SIMCALL_SET_CATEGORY,
  SIMCALL_RUN_KERNEL,
  SIMCALL_RUN_BLOCKING,
  NUM_SIMCALLS
} e_smx_simcall_t;