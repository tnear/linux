# ionice

`ionice` - set or get process I/O scheduling class and priority

See also: [`nice`](nice.md)

## Introduction

`ionice` shows how a process ranks when competing for disk access. It is the disk counterpart to `nice`, which is for CPU time.

| Scheduling classes | # | Meaning |
|--------------------|---|---------|
| none               | 0 | No preference, kernel picks                |
| realtime           | 1 | Get 1st access (can starve other processes)|
| best-effort        | 2 | Default, share disk time by level          |
| idle               | 3 | Only get disk access when no other process wants it |

## Examples

```bash
# show I/O class and priority of PID 1234
$ ionice -p 1234
none: prio 0

# put running process in the idle class
$ ionice -c 3 -p 1234

# best-effort, lowest priority level
$ ionice -c 2 -n 7 -p 1234

# highest-priority realtime I/O (needs root)
$ sudo ionice -c 1 -n 0 -p 1234
```
