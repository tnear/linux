# nice

`nice` - run a program with modified scheduling priority

See also: [`renice`](renice.md)

## Basic usage

Range: `-20` is highest priority and `19` is lowest priority.

```bash
# get default niceness
$ nice
0

# run 'ls' with a different priority (5)
$ nice -n 5 ls

# shows niceness value of a process ('NI' column)
$ ps -axl
F   UID  PID  PPID PRI  NI    VSZ   RSS WCHAN  STAT  TIME COMMAND
4     0    1     0  20   0 167864 12380 -      Ss    0:05 /sbin/init splash
```
