# Signal

Signals are standardized messages sent to a running program to trigger a behavior such as quitting or error handling.

Manual: `man 7 signal`

## Signals
| Signal  | # | Shortcut| Description |
|---------|---|---------|-------------|
| SIGINT  | 2 | Ctrl+C  | Interrupt signal (default behavior is terminate)
| SIGQUIT | 3 | Ctrl+\  | Terminates process and dumps core
| SIGKILL | 9 |         | Kills process (cannot be caught)
| SIGTERM |15 |         | Terminates process (unlike SIGKILL, it can be caught)
| SIGSTOP |15 |         | Stops a process
| SIGTSTP |20 | Ctrl+Z  | Suspends execution of process

## Resources
- https://en.wikipedia.org/wiki/Signal_(IPC)
