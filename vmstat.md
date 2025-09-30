# vmstat

`vmstat` - Report virtual memory statistics

Virtual Memory STATistics. Reports information about processes, memory, paging, block IO, traps, disks and CPU activity.

## Basic usage
```bash
$ vmstat
procs ---------memory---- --swap-- ---io-- -system-- ------cpu-----
 r  b swpd   free   buff   si   so  bi  bo   in   cs us sy id wa st
 0  0    0 5509736 147568   0    0  15   3  175  195  2  2 96  0  0
```

Annotation:
```
Procs:
r = # runnable processes
b = # blocked

Memory:
  swpd: the amount of swap memory used.
  free: the amount of idle memory.
  buff: the amount of memory used as buffers.
 cache: the amount of memory used as cache.
 inact: the amount of inactive memory. (-a option)
active: the amount of active memory. (-a option)

Swap:
si: Amount of memory swapped in from disk (/s).
so: Amount of memory swapped to disk (/s).

IO:
bi: Blocks received from a block device (blocks/s).
bo: Blocks sent to a block device (blocks/s).

System:
in: The number of interrupts per second, including the clock.
cs: The number of context switches per second.

CPU:
us: Time spent running non-kernel code. (user time, including nice time)
sy: Time spent running kernel code. (system time)
id: Time spent idle.
wa: Time spent waiting for IO.
st: Time stolen from a virtual machine.
```

## Show statistics
Use `-s` to show detailed statistics such as total RAM (total memory) and interrupt information.

```bash
$ vmstat -s
    8126716 K total memory
    1450132 K used memory
     471612 K active memory
    1820616 K inactive memory
    5507432 K free memory
     147712 K buffer memory
    1021440 K swap cache
    1048572 K total swap
          0 K used swap
    1048572 K free swap
     121745 non-nice user cpu ticks
         29 nice user cpu ticks
      80899 system cpu ticks
    6115277 idle cpu ticks
      31657 IO-wait cpu ticks
          0 IRQ cpu ticks
      15347 softirq cpu ticks
          0 stolen cpu ticks
     922219 pages paged in
     163349 pages paged out
          0 pages swapped in
          0 pages swapped out
   11188533 interrupts
   12486962 CPU context switches
 1686738949 boot time
     132692 forks
```

## Add new row every 2 seconds
```bash
$ vmstat 2
```
