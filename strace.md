# strace

`strace` - trace system calls and signals

- *All* `strace` outputs begin with `execve`. The `execve` syscall runs an executable.
- `strace` writes to `stderr` (not `stdout`).

## Basic usage
```bash
$ strace pwd
execve("/usr/bin/pwd", ["pwd"], 0x7ffff62cbf90 /* 55 vars */) = 0
brk(NULL)                               = 0x5581dd782000
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7fc54fdf3000
<truncated>
```

## Files
### Write `strace` output to file
```bash
# strace output goes to stdout, so use '2>' to capture it to a file
$ strace ls 2> ls.out

# print strace output
$ cat ls.out
```

### Write `ls` output to ls.out and `strace` output to stderr (screen)
```bash
$ strace ls > ls.out
$ cat ls.out
basename.txt
bc.txt
```

## `-c, --summary-only`
Count time, calls, and errors for each syscall and report a summary. Can be used for basic profiling.
```bash
$ strace -c ./malloc.o
% time     seconds  usecs/call     calls    errors syscall
------ ----------- ----------- --------- --------- ----------------
 30.98    0.000895         895         1           execve
 18.69    0.000540          54        10         2 mmap
  6.16    0.000178          44         4           pread64
  5.88    0.000170          56         3           newfstatat
  5.71    0.000165          55         3           mprotect
  5.54    0.000160          53         3           brk
  <truncated>
------ ----------- ----------- --------- --------- ----------------
100.00    0.002889          72        40         5 total
```

## `-p pid, --attach=pid`
Use `-p` to attach to a process ID.
```bash
# terminal 1: start command
$ ping 8.8.8.8

# terminal 2: attach to strace
$ sudo strace -p $(pidof ping)
strace: Process 84304 attached
restart_syscall(<... resuming interrupted read ...>) = 0
sendto(3, 64, 0, {sa_family=AF_INET, sin_port=htons(0), sin_addr=inet_addr("8.8.8.8")}, 16)
```

## `-e` to trace (filter) for expression

```bash
# This filters for 'brk' syscalls (and ignores stdout):
$ strace -e brk ls > /dev/null
brk(NULL)                = 0x55788b70c000
brk(NULL)                = 0x55788b70c000
brk(0x55788b72d000)      = 0x55788b72d000
+++ exited with 0 +++
```

## Timing information
- Use the flag `-ttt` to print a first column showing time-since-epoch with microsecond accuracy
- Use the `-T` flag to print the last field, which is the duration of the system call in microseconds.

```bash
$ strace -ttt -T ls
1748108167.146366 execve("/usr/bin/ls", ["ls"], /* 36 vars */) = 0 <0.000632>
1748108167.147278 brk(NULL)             = 0x561f00cb5000 <0.000089>
```

This shows that `execve` took 632 us and `brk` took 89 us. `strace` has built-in overhead, so these numbers may be slower than in production runs.
