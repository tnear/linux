# source

`source` - reads and executes the contents of a file

`source` runs one line after another. It runs in your current shell, while executing a script spawns a new shell.

See also: [`time`](time.md), [`eval`](eval.md)

## Basic usages
```bash
# Reload .zshrc (must run in same shell):
source ~/.zshrc

# Run txt file with a list of commands:
$ cat cmds.txt
echo 'a'
echo 'b'
echo 'c'

$ source cmds.txt
a
b
c
```

## Time command duration
```bash
# Time multiple commands defined in file (need to time current shell):
$ time (source fileWithCmds.txt) > /dev/null
```