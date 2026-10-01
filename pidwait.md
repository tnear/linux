# pidwait

`pidwait` - look up, signal, or wait for processes based on name and other attributes

See also: [`wait`](wait.md), [`pgrep`](pgrep.md)

## Introduction

`pidwait` blocks until processes which matches a specified pattern exits. Unlike the `wait`, it works on processes that aren't children of the current shell. This allows waiting on any process running on the system. It uses the same matching options as `pgrep`.

## Example

```bash
# start a background job that lives for 10 seconds
$ sleep 15 &
[1] 602

# wait for sleep to finish
$ pidwait sleep
[1]  + 602 done       sleep 15
```
