# chroot

`chroot` - run command or interactive shell with special root directory

`chroot` changes the root directory for a running process and its children. It isolates that process from rest of the filesystem.

## Use cases
- testing: running applications in safe environments
- security: limiting what a process can access

## Basic usage

```bash
$ sudo chroot /mnt/recovery

# Any process run in that shell will see /mnt/recovery as /.

# Paths outside /mnt/recovery cannot be accessed
```
