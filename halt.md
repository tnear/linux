# halt

`halt` - halt the machine

See also: [`poweroff`](poweroff.md), [`reboot`](reboot.md), [`shutdown`](shutdown.md)

## Introduction

`halt` stops a running Linux system, but typically does *not* power off. It follows these steps:

1. Stops services and processes
1. Writes pending data to storage
1. Unmounts filesystems
1. Stops the OS and CPU

The machine may remain powered on and display this message: `System halted`.

```bash
# 'halt' must be run by root user
$ sudo halt
```
