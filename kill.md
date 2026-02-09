# kill

kill - send a signal to a process

See also: [`pkill`](pkill.md)

## Basic syntax
```bash
$ kill <pid1> <pid2> <pid3> <...>
$ kill -signal_num <pid>
$ kill -signal_name <pid>
$ kill %<job_num>
```

## Commonly used signals

- `-0`: No signal, only checks if you have permission to signal
- `-1`: HUP (hang up)
- `-2`: INT (interrupt)
- `-3`: QUIT (quit)
- `-6`: ABRT (abort)
- `-9`: KILL (non-catchable, non-ignorable kill)
- `-14`: ALRM (alarm clock)
- `-15`: TERM (software termination signal, default)
- `-19`: STOP (stop a process)

## Search for process id and kill
```bash
$ ps | grep gedit
220421 pts/3    00:00:06 gedit

# kill using SIGTERM (no number defaults to SIGTERM)
$ kill 220421
```

## Force-kill using SIGKILL or SIGTERM
```bash
# sigkill
$ kill -9 <processID>
$ kill -SIGKILL <processID>  # equivalent syntax using name

# sigterm
$ kill -15 <processID>
$ kill -SIGTERM <processID>  # equivalent syntax using name
$ kill <processID>  # SIGTERM is default
```

## Kill by job number
Use `%<num>` to kill a job by number.

```bash
$ jobs
[1]  + suspended  sleep 1000
$ kill %1
```

## Flags

### Signal name
Use `-s` to specify a signal by its name.
```bash
# kill -s <SIG_NAME> <pid>
kill -s SIGKILL <pid>
```
