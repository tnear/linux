# Signal

Signals are standardized messages sent to a running program to trigger a behavior such as quitting or error handling.

Manual: `man 7 signal`

See also: [`kill`](kill.md), [`pkill`](pkill.md)

## Signals
| Signal    | #|Shortcut| Description |
|-----------|--|--------|-------------|
| `SIGHUP`  | 1|        | Terminal was closed. See [`nohup`](nohup.md)
| `SIGINT`  | 2|`Ctrl+C`| Interrupt signal (default behavior is terminate)
| `SIGQUIT` | 3|`Ctrl+\`| Terminates process and dumps core
| `SIGABRT` | 6|        | Terminates process and dumps core
| `SIGKILL` | 9|        | Kills process (cannot be caught)
| `SIGSEGV` |11|        | Simulate segmentation fault
| `SIGTERM` |15|        | Terminates process (can be caught)
| `SIGSTOP` |19|        | Stops a process
| `SIGTSTP` |20|`Ctrl+Z`| Suspends execution of process

## Send signal
```bash
# send sigstop
kill -SIGSTOP <pid>
```

## Resources
- https://en.wikipedia.org/wiki/Signal_(IPC)
