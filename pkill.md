# pkill

`pkill` - look up or signal processes based on name and other attributes

## Kill process by name
```bash
$ pkill gedit
```

### Send SIGINT signal (Ctrl+C)
```bash
$ pkill -INT gedit
```

### Match full command line
Use `-f, --full` to kill process by matching its command.

```bash
# note how two processes have same application
$ ps -aux
USER    COMMAND
user    run_service app1
user    run_service app2

# kill app2 by matching its full command
pkill -9 -f 'run_service app2'
```
