# top

`top` - Table of Processes - display Linux processes

Displays dynamic table of active processes

## Basic usage
```bash
# show all processes
top

# show specific pid
top -p <pid>

# show threads for a pid
top -p <pid> -H
```

## Banner

### Load average
```
top - 12:47:24 up  8:21,  1 user,  load average: 0.44, 0.27, 0.25
```

- `12:47:24`: current time
- `up 8:21`: system uptime (8 hours, 21 minutes)
- `1 user`: number of users logged into system
- `load average: 0.44, 0.27, 0.25`: system load averages for last 1, 5, and 15 minutes.

### Tasks
```
Tasks: 219 total,   1 running, 218 sleeping,   0 stopped,   0 zombie
```

### CPU utilization
```
%Cpu(s): 28.2 us, 63.7 sy,  0.1 ni,  0.0 id,  0.0 wa,  0.0 hi,  3.6 si,  4.4 st
```

- `28.2 us`: user CPU time (28%)
- `63.7 sy`: system (kernel) cpu time (63.7%)
- `0.1 ni`: nice CPU time (0.1%)
- `0.0 id`: idle CPU time (0%)
- `0.0 wa`: I/O wait (0%)
- `0.0 hi`: hardware interrupts (0%)
- `3.6 si`: software interrupts (3.6%)
- `4.4 st`: steal time (4.4%), time stolen from this VM by the hypervisor

### Memory usage
```
MiB Mem :   3921.2 total,    115.9 free,   1402.8 used,   2402.5 buff/cache
MiB Swap:   1024.0 total,    477.1 free,    546.9 used.   2199.3 avail Mem
```

#### `MiB Mem`: memory values are shown in Mebibytes (1 MiB = 1024 KiB)
- `3921.2 total`: total physical RAM on system
- `115.9 free`: unused RAM (see `buff/cache` for complete picture)
- `1402.8 used`: memory actively used by applications
- `2402.5 buff/cache`: memory used for buffers and cache
    - buffers: memory used for block device buffering
    - cache: memory used for file system page cache
    - (this memory can be reclaimed if needed)

#### `MiB Swap`: swap space metrics
- `1024.0 total`: total swap space configured
- `2199.3 avail Mem`: shows free memory + memory which could be reclaimed from buffers/cache
    - This is often a better indicator of available memory than the `free` value

### Process info
```
    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
  75501 root      20   0 1199748 329596   6788 S   7.6   8.2 117:29.72 nessusd
    730 root      20   0  504452  87472  19172 S   5.0   2.2  17:18.79 Xorg
```

- `PID`: process id
- `USER`: user name of process owner
- `PR`: process priority
- `NI`: nice value (-20 highest priority, 19 lowest)
- `VIRT`: virtual memory size (all memory a process could access)
- `RES`: resident memory used (physical RAM used by process)
- `SHR`: shaed memory size (memory that could be shared with other processes)
- `S`: Process status. `R`: running, `S`: sleeping, `Z`: zombie, `T`: stopped/traced
- `%CPU`: CPU usage percentage
- `%MEM`: physical memory usage percentage
- `TIME+`: total CPU time used by process since starting, `minutes:seconds:hundredths`
- `COMMAND`: program name

```bash
## Show processes for a user

$ top -u <user>  # basic syntax
$ top -u root  # show for root user
```

## Interactive sort
- Press `F` to open Fields Management
- Arrow keys to select field
- `s` to choose field to sort. Current field indicator is in top right and **bold**.
- `q` or <Esc> to quit when done
- `1` to see CPU core breakdown
