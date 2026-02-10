# tmux

`tmux` - terminal multiplexer

See also: [`screen`](screen.md)

`tmux` is newer than `screen`.

Hierarchy: Sessions have windows, windows have panes.

## Start session
```bash
# Start unnamed tmux session
$ tmux

# Start tmux session with name
$ tmux new -t session_name
```

## Navigating tmux sessions
### Splitting
```
Ctrl+B then "            = split horizontally
Ctrl+B then %            = split vertically
Ctrl+B then <arrow keys> = switch panes left/right/up/down
```

### Moving panes
```
Ctrl+B then O            = switch to Other
Ctrl+B + Ctrl + O        = rotate panes clockwise
Ctrl+B then <arrow keys> = move between panes
```

### Zoom into one pane
Ctrl+B then Z = zoom into current pane. Same shortcut key exits zoom.

## List tmux information
```bash
$ tmux ls
0: 1 windows (created Wed Sep 13 07:16:59 2023)
1: 1 windows (created Wed Sep 13 07:17:41 2023)
session3: 1 windows (created Wed Sep 13 07:20:38 2023) (attached)
```

## Tabs
### Creating tabs
Tab numbers are on bottom panel and are 0-indexed.
```
Ctrl+B then c          = create new tab
Ctrl+B then <num>      = switch to tab number
    Ex: Ctrl+B then 0 switches to tab 0
```

## Attaching/detaching sessions
```
Ctrl+B then d           = detach tmux session (leaves running in background)
$ tmux attach           = reattach
$ tmux a                = <shorthand syntax to attach>
$ tmux attach -t <name> = attach by session name
```

## Miscellaneous

### View all keybindings
`Ctrl+B then ?`

### Synchronize panes
1. `Ctrl+B` then `:` to enter command mode
1. `:setw synchronize-panes`  # Toggle on
1. Use synchronized panes
1. `:setw synchronize-panes`  # Toggle off
