# lsipc

`lsipc` - show information on IPC facilities currently employed in the system

See also: [`ipcs`](ipcs.md)

## Introduction

`lsipc` shows information about shared memory segments, message queues, and semaphore arrays. It iss the modern readable replacement for the older `ipcs` command.

## Basic usage

```bash
lsipc                 # overview of all three types
lsipc -m              # shared memory only
lsipc -q              # message queues only
lsipc -s              # semaphores only
lsipc -g              # summary of system-wide limits and usage

$ lsipc
RESOURCE DESCRIPTION                                         LIMIT USED  USE%
MSGMNI   Number of message queues                            32000    0 0.00%
MSGMAX   Max size of message (bytes)                            8K    -     -
MSGMNB   Default max size of queue (bytes)                     16K    -     -
SHMMNI   Shared memory segments                               4096    0 0.00%
SHMALL   Shared memory pages                  18446744073692774399    0 0.00%
SHMMAX   Max size of shared memory segment (bytes)             16E    -     -
SHMMIN   Min size of shared memory segment (bytes)              1B    -     -
SEMMNI   Number of semaphore identifiers                     32000    0 0.00%
SEMMNS   Total number of semaphores                     1024000000    0 0.00%
SEMMSL   Max semaphores per semaphore set.                   32000    -     -
SEMOPM   Max number of operations per semop(2)                 500    -     -
SEMVMX   Semaphore max value                                 32767    -     -
```
