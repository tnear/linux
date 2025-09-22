# fg

`fg` — foreground - run jobs in the foreground

## Basic example
```bash
# create a long running process
$ sleep 1000
$ Ctrl+Z  # suspend sleep job

# show suspended state
$ jobs
[1]  + suspended  sleep 1000

# place sleep job in background ('continued')
$ bg
[1]  + continued  sleep 1000

# show that sleep process is running again
$ jobs
[1]  + running    sleep 1000

# place sleep job in foreground
$ fg
[1]  + running    sleep 1000
```

## Job index
Use `%n` to switch to a job by its number.
```bash
$ jobs   # list jobs to see indexes
$ bg %2  # put job 2 in background
$ fg %1  # put job 1 in foreground
```
