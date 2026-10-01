# disown

`disown` - a shell builtin removes a job from the shell's job table

See also: [`jobs`](jobs.md)

## What it does

Once a job is disowned, the shell no longer tracks it, and it won't send that job a `SIGHUP` when the shell exits. `disown` is useful to keep a running process alive after closing the terminal or exiting SSH.

## Basic usage

```bash
sleep 300 &       # start a background job
jobs              # shows [1]+ Running  sleep 300 &
disown %1         # remove job 1 from the job table
jobs              # now empty, but the process is still running
```
