# ps

`ps` - process status - report a snapshot of the current processes.

See also: [`pstree`](pstree.md)

## Basic usage
```bash
$ ps -aux
USER PID %CPU %MEM    VSZ   RSS TTY STAT START TIME COMMAND
root   1  0.0  0.2 167480 12028 ?   Ss   Jan22 0:03 /sbin/init
root   2  0.0  0.0      0     0 ?   S    Jan22 0:00 [kthreadd]
```

### Dash/hyphen use
A few commands, such as `ps` and [`tar`](tar.md) do not require `-` before their flags (ex: `ps aux`). This is legacy from supporting old UNIX variants.

For consistency, prefer using `-`, ex: `tar -xvf`.

### Column meaning
- `VSZ`: virtual memory size in kilobytes (total allocated memory)
- `TTY`: terminal type (may show `?` for processes not associated
with a terminal)
- `TIME`: the cumulative CPU time used by the process
- `RSS`: resident size set - physical memory used in KB (actual RAM usage)
- `STAT`: process state code. `R`=running, `S`=sleeping, `Z`=zombie, `T`=stopped

## Common flags
- `-a`: all processes with a terminal
- `-e`: show all processes. Same as `-A`
- `-f`: full format listing
- `-l`: long format: includes niceness value (`NI`).
- `-p`: filter for a pid, ex: `ps -p 101`
- `-u`: user-oriented (extra columns). `-u` is incompatible with `-l`
- `-x`: include extra processes not attached to terminal

## Show process hierarchy

Use `f` to show process hierarchy as a forest.

```bash
$ ps -a f
    PID TTY      STAT   TIME COMMAND
  25336 pts/2    Ss+    0:05 /usr/bin/zsh
  24422 pts/1    Ss     0:05 /usr/bin/zsh
 210854 pts/1    S+     0:00  \_ man top
 210862 pts/1    S+     0:00      \_ pager
  11551 pts/0    Ss     0:22 /usr/bin/zsh
 214803 pts/0    R+     0:00  \_ ps f
```

## User-defined format
Use `-o <fields>` to customize the output of `ps`.

```bash
# print user name of specified pid
$ ps -o user -p <pid>
USER
my_user

# print pid and user (comma separated)
$ ps -o pid,user
PID USER
...

# use '=' not to print the column header
$ ps -o user= -p <pid>
my_user
```

### Parent process ID
Use `ppid` to get parent process ID.
```bash
$ ps -o ppid= -p <pid>
```
