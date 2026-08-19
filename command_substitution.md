# Command Substitution

Syntax: `$(cmd)`

## Basic usage

```bash
# use command substitution to interpret as 'date' command:
$ echo $(date)
Tue Jun 13 08:14:06 AM CDT 2023

# (older syntax style using backticks)
$ echo `date`

# Run program using output from Python:
$ ./a.out $(python -c 'print("A" * 8)')

# Run program in gdb using output from Python:
(gdb) run $(python -c 'print("A" * 8)')
```
