# Signal

Signals are standardized messages sent to a running program to trigger a behavior such as quitting or error handling.

## Signals
| Signal  | Shortcut | Description |
|---------|----------|-------------|
| SIGINT  | Ctrl+C   | Interrupt signal (default behavior is terminate)
| SIGTSTP | Ctrl+Z | Suspends execution of process
| SIGQUIT | Ctrl+\ | Terminates process and dumps core
| SIGKILL |        | Kills process (cannot be caught)
| SIGTERM |        | Terminates process (unlike SIGKILL, it *can* be caught)

## Resources
- https://en.wikipedia.org/wiki/Signal_(IPC)
