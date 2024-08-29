# kill

kill - send a signal to a process

See also: pkill

Syntax:
```
$ kill <pid>
$ kill -signal_num <pid>
$ kill <job#>
```

todo: multiple process IDs, plus show pkill

## Commonly used signals
```
-1       HUP (hang up)
-2       INT (interrupt)
-3       QUIT (quit)
-6       ABRT (abort)
-9       KILL (non-catchable, non-ignorable kill)
-14      ALRM (alarm clock)
-15      TERM (software termination signal)
```

## Search for process id and kill
```
$ ps | grep gedit
220421 pts/3    00:00:06 gedit

# Kill process ID above:
$ kill 220421
```

## Force-kill using SIGKILL or SIGTERM
```
$ kill -9 <processID>
OR
$ kill -SIGKILL <processID>

$ kill -15 <processID>
$ kill -SIGTERM <processID>
```

## Kill multiple processes
```
$ kill <pid1> <pid2> <pid...>
```

## Kill by job number
```
$ jobs
[1]  + suspended  sleep 1000
$ kill %1
```
