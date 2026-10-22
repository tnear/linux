# sgdisk

`sgdisk` - Command-line GUID partition table (GPT) manipulator for Linux and Unix

See also: [`mkfs`](mkfs.md) 

## Introduction

`sgdisk` is the scriptable, command-line utility to create and edit GPT partition tables. Changes are written immediately with no confirmation step, so double-check the device name. `sgdisk` does not create filesystems (use `mkfs`).

## Example

```bash
sudo sgdisk -p /dev/sdb          # view the current table
sudo sgdisk -Z /dev/sdb          # wipe any old partition data
sudo sgdisk -n 1:0:+512M -t 1:EF00 -c 1:"EFI" /dev/sdb   # 512 MB EFI partition
sudo sgdisk -n 2:0:0     -t 2:8300 -c 2:"data" /dev/sdb  # rest of the disk

sudo mkfs.ext4 /dev/sdb2         # then create the filesystem
```
