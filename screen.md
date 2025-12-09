# screen

`screen` - screen manager with VT100/ANSI terminal emulation

See also: [`tmux`](tmux.md)

`screen` is older than `tmux`.

## Basic workflow
```bash
# Create a nameless screen
$ screen

# Detach screen
$ screen
# press Ctrl+A, D on keyboard
[detached from 228806.pts-1.user]

# Set screen name. Useful to distinguish multiple screens:
$ screen -S my_new_screen

# List all screens:
$ screen -ls
There are screens on:
        229968.my_new_screen    (01/06/2023 05:44:54 PM)        (Detached)
        228806.pts-1.user       (01/06/2023 05:42:38 PM)        (Detached)
2 Sockets in /run/screen/S-user.

# Reattach screen:
$ screen -r

# Reattach screen by name (needed for 2+):
$ screen -r my_new_screen

# Exit screen:
$ exit
```
