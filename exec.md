# exec

`exec` is a shell built-in which replaces the current shell process with a new command process.

`exec` *replaces* the current process instead of creating a new process. Therefore, it is more efficient. `exec` does not return to the original process. It cannot because it has replaced the original process.

## Common usage
```shell
#!/bin/bash
# run a script
exec python3 main.py
# (this line is never reached due to exec)
```
