# pgrep

`pgrep` - look up, signal, or wait for processes based on name and other attributes

See also: [`pidof`](pidof.md)

## Find gedit process ID
```bash
$ pgrep gedit
643415
```

### Regex pattern matching
```bash
# find processes ending with 'sh' (such as zsh/bash)
$ pgrep '.*sh'
10
```

### More difficult syntax using `ps` (not recommended)
```bash
# First, find gedit processes (this includes the self-match):
$ ps -aux | grep gedit
kali      643415  0.5  1.4 630856 57700 pts/1    SNl  16:15   0:00 gedit
kali      644772  0.0  0.0   6396  2080 pts/0    S+   16:17   0:00 grep --color=auto -P gedit

# Then, get the PID field:
# Note1: this uses tr -s to squeeze consecutive spaces to make cut easier
# Note2: this uses grep -v to avoid self-matching of the grep command
$ ps -aux | grep gedit | grep -v grep | tr -s ' ' | cut -f2 -d ' '
643415
```

## Common flags
- `-a`: show full command line
- `-i`: case insensitive match, `pgrep -i '<pattern>'`
- `-l`: also show process name (similar to `ls -l`)

## `pgrep` vs. `pidof`

### `pgrep` summary
- Simpler and faster than `pgrep` because it does not do regex
- Requires knowing exact process name
- Returns space separated PIDs

### `pgrep` summary
- Supports pattern matching
- Supports advanced filtering and detailed output
- Returns one PID per line
