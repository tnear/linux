# prlimit

`prlimit` - get and set process resource limits

See also: [`ulimit`](ulimit.md)

## Introduction

`prlimit` gets or sets the resource limits of a process. Unlike `ulimit`, which only affects the current shell, `prlimit` can change limits on a process that is already running.

### Soft vs hard limits

- Soft limit: is what the kernel actually enforces.
- Hard limit: the ceiling the soft limit can be raised to.

Unprivileged processes can lower their hard limit (irreversibly) and move the soft limit anywhere up to the hard limit. Raising a hard limit needs root (`CAP_SYS_RESOURCE`).

## Examples

```bash
# sudo show all limits of PID 1234
$ prlimit --pid 1234
RESOURCE  DESCRIPTION                SOFT      HARD UNITS
AS        address space limit   unlimited unlimited bytes
CORE      max core file size            0 unlimited bytes
CPU       CPU time              unlimited unlimited seconds
DATA      max data size         unlimited unlimited bytes
FSIZE     max file size         unlimited unlimited bytes

# raise a running process's file descriptor limit (needs root)
$ sudo prlimit --pid 1234 --nofile=65536:65536

# run a command with core dumps disabled
$ prlimit --core=0 ./app

# cap a script at 100 processes (a crude fork-bomb guard)
$ prlimit --nproc=100 ./script.sh
```
