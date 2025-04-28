# hier-proc

The `/proc` directory includes information on system hardware and processes. `/proc` is a virtual file system.


Many `/proc` files show as 0 bytes despite having data due to their virtual nature:
```
$ ls -l /proc/meminfo
-r--r--r-- 1 root 0 /proc/meminfo

$ wc -l /proc/meminfo
53 /proc/meminfo
```

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
Contains detailed memory information such as amount of RAM and hugepages.

### Get RAM and hugepages
```
$ egrep '^(Huge|Mem)' /proc/meminfo
MemTotal:       263451024 kB  # 263 M KB = 263 GB total RAM
MemFree:        199482876 kB
MemAvailable:   243022872 kB
HugePages_Total:       4
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:    1048576 kB
Hugetlb:         4194304 kB
```

## `/proc/cmdline`
Shows the parameters passed to the kernel at boot time.

## `/proc/<pid>`
Contains the file representation of process id.

Import sub-directories:

### `/proc/<pid>/cmdline`
Contains the command that started the process and its parameters.
```
$ cat cmdline
-bash
```

### `/proc/<pid>/fd`
Contains all file descriptors used by that process.
```
$ ls /proc/<pid>/fd
0 12 17 18 2 20 22

$ ll /proc/<pid>/fd
lr-x------ 1 travis travis 64 Aug  4 15:23 0 -> 'pipe:[68332]'
lrwx------ 1 travis travis 64 Aug  4 15:23 12 -> 'anon_inode:[eventfd]'
lr-x------ 1 travis travis 64 Aug  4 15:23 17 -> /dev/null
lrwx------ 1 travis travis 64 Aug  4 15:23 18 -> 'socket:[76829]'
l-wx------ 1 travis travis 64 Aug  4 15:23 2 -> 'pipe:[68334]'
lrwx------ 1 travis travis 64 Aug  4 15:23 20 -> 'socket:[76831]'
lr-x------ 1 travis travis 64 Aug  4 15:23 22 -> anon_inode:inotify
```

## `/proc/<pid>/fd`
All file descriptors in use by a process. `0=stdin, 1=stdout, 2=stderr`.

## `/proc/interrupts`
Shows how many times an interrupt number (0, 1, 6, 17) ran on a CPU.

## `/proc/sys/kernel/core_pattern`
Contains the core dump pattern.
```bash
# note: the '|' symbol at the beginning means that
# core dumps are being managed by systemd (coredumpctl)
cat /proc/sys/kernel/core_pattern
|/usr/lib/systemd/systemd-coredump %P %u %g %s %t %c %h
```
