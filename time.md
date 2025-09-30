# time

`time` — time a simple command

## Basic usage
Prefix a command to run with `time`:
```bash
$ time ping -c3 example.com
real    2.08s
user    0.00s
sys     0.01s
cpu     0%
```

## Measure compilation
```bash
$ time g++ main.cc
g++ main.cc  0.16s user, 0.05s system, 89% cpu, 0.227 total
```

- 0.16s user: the time spent in user mode (outside of kernel)
- 0.5s system: time spent in kernel
- 89% cpu: CPU utilization. This number will be low for I/O bound tasks
- 0.227 total: user time + system time

## Time multiple commands defined in file
`$ time (source fileWithCmds.txt) > /dev/null`

## Time is a reserved shell keyword
The shell interprets it before it can go to an external command:
```bash
$ type time
time is a reserved word
```

## `/bin/time`
`/bin/time` is another timing command which can display detailed diagnostics such as memory usage and page faults.

Installation: `$ sudo apt install time`

### Python printing
Use `-v` for verbose output.
```bash
$ /bin/time -v python -c 'print("hello world")'
hello world
        Command being timed: "python -c print("hello world")"
        User time (seconds): 0.06
        System time (seconds): 0.01
        Percent of CPU this job got: 93%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.08
        Average shared text size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 9028
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 978
        Involuntary context switches: 15
        Swaps: 0
        File system inputs: 0
        File system outputs: 0
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
```
