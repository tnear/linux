TOP

top - Table of Processes - display Linux processes

Displays dynamic table of active processes

(1)
$ top

top - 12:47:24 up  8:21,  1 user,  load average: 0.44, 0.27, 0.25
Tasks: 219 total,   1 running, 218 sleeping,   0 stopped,   0 zombie
%Cpu(s):  3.8 us,  1.6 sy,  0.0 ni, 94.1 id,  0.1 wa,  0.0 hi,  0.3 si,  0.0 st
# us = user                = percent time running user processes
# sy = system              = percent time running system/kernel processes
# id = idle                = percent time spent in kernel idle handler
# wa = wait                = percent time waiting for I/O completion
# hi = hardware interrupts = percent time spent servicing hardware interrupts
# si = software interrupts = percent time spent servicing software interrupts
# st = time stolen         = time stolen from this vm by the hypervisor

MiB Mem :   3921.2 total,    115.9 free,   1402.8 used,   2402.5 buff/cache
MiB Swap:   1024.0 total,    477.1 free,    546.9 used.   2199.3 avail Mem

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
  75501 root      20   0 1199748 329596   6788 S   7.6   8.2 117:29.72 nessusd
    730 root      20   0  504452  87472  19172 S   5.0   2.2  17:18.79 Xorg


(2)
# Show processes for a user, ex: top -u root:
$ top -u <user>


(3)
Interactive sort:
- Press 'F' to open Fields Management
- Arrow keys to select field
- 's' to choose field to sort. Current field indicator is in top right and bold.
- 'q' or <Esc> to quit when done

---