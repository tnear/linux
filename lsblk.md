# lsblk

`lsblk` - list block devices

Block devices include hard disk drives, SSDs, and other storage devices.

## Basic usage
```bash
$ lsblk
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 80.1G  0 disk
└─sda1   8:1    0 80.1G  0 part /
sr0     11:0    1 1024M  0 rom
```
- `sd`: originally meant storage device
- `sda`: the first storage device
- `sdb`: the second storage device, etc.

## Information about a block device

```bash
$ lsblk /dev/nvme2n1

NAME    MAJ:MIN RM SIZE RO TYPE MOUNTPOINTS
nvme2n1 259:1    0   2T  0 disk
```
