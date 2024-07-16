# hier-proc

The `/proc` directory includes information on system hardware and processes. `/proc` is a virtual file system.

## `/proc/cpuinfo`
Contains detailed hardware information such as # processors and processor speed.

```
$ less /proc/cpuinfo
processor       : 0
vendor_id       : GenuineIntel
cpu family      : 6
model           : 106
model name      : Intel(R) Xeon(R) Gold 6354 CPU @ 3.00GHz
stepping        : 6
microcode       : 0xd0003d1
cpu MHz         : 3000.000
cache size      : 39936 KB
physical id     : 0
siblings        : 36
core id         : 0
cpu cores       : 18
```

## `/proc/meminfo`
Contains detailed memory information such as amount of used and available RAM.

### Get RAM usage
```
$ cat /proc/meminfo | grep Mem
MemTotal:       527570896 kB    # 527 M KB = 527 GB total RAM
MemFree:        494231856 kB
MemAvailable:   503907080 kB
```

Many `/proc` files show as 0 bytes despite having data due to their virtual nature:
```
$ ls -l /proc/meminfo
-r--r--r-- 1 root 0 /proc/meminfo

$ cat /proc/meminfo | wc -l
53
```

## `/proc/<pid>`
Contains the file representation of process id.

## `/proc/<pid>/fd`
All file descriptors in use by a process. `0=stdin, 1=stdout, 2=stderr`.

## `/proc/interrupts`
Shows how many times an interrupt number (0, 1, 6, 17) ran on a CPU.
