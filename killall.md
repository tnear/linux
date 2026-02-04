# killall

`killall` - kill processes by name

## Send `SIGTERM` (terminal) signal to ALL gedit processes
```bash
$ killall gedit
```

## Send SIGKILL to all gedit processes
```bash
$ killall -9 gedit
or
$ killall -SIGKILL gedit
```

## Commonly used signals
- `1`: `HUP` (hang up)
- `2`: `INT` (interrupt)
- `3`: `QUIT` (quit)
- `6`: `ABRT` (abort)
- `9`: `KILL` (non-catchable, non-ignorable kill)
- `14`: `ALRM` (alarm clock)
- `15`: `TERM` (software termination signal)
