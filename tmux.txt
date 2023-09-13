TMUX

tmux — terminal multiplexer

Hierarchy:
Sessions have windows, windows have panes.

# Start tmux session:
$ tmux

# Start tmux session with name:
$ tmux new -t session_name

# Splitting:
Ctrl+B then %          = split vertically
Ctrl+B then "          = split horizontally
Ctrl+B then <arr keys> = switch left/right

# Moving panes:
Ctrl+B then O            = switch to Other
Ctrl+B + O               = rotate panes clockwise
Ctrl+B then <arrow keys> = move between panes

# Zoom:
Ctrl+B then Z = zoom into current pane. Same shortcut key exits zoom.

# List tmux information:
$ tmux ls
0: 1 windows (created Wed Sep 13 07:16:59 2023)
1: 1 windows (created Wed Sep 13 07:17:41 2023)
session3: 1 windows (created Wed Sep 13 07:20:38 2023) (attached)

# Creating (tab numbers are on bottom panel):
Ctrl+B then c          = create new tab
Ctrl+B then <num>      = switch to tab number
    Ex: Ctrl+B then 0 switches to tab 0

# Attaching/detaching:
Ctrl+B then d          = detach tmux session (leaves running in background)
$ tmux attach            = reattach
$ tmux a                 = <shorthand syntax to attach>
$ tmux attach -t <name>  = attach by session name

# Synchronize panes:
Step 1: Ctrl+B then ':' to enter command mode
Step 2: :setw synchronize-panes  # Toggle on
Step 3: <use synchronized panes>
Step 4: :setw synchronize-panes  # Toggle off

---