# pvcreate

`pvcreate` - Initialize physical volume(s) for use by LVM

See also: [volumes](volumes.md)

## Introduction

A *physical volume* (PV) is a storage device (such as a disk like `/dev/sda` or partition like `/dev/sda1`). They are created by Logical Volume Manager (LVM) using `pvcreate`.

## Hierarchy

`pvcreate` creates a physical volume.
```
disk / partition
     ↓
physical volume (PV)
     ↓
volume group (VG)
     ↓
logical volume (LV)
     ↓
filesystem
```
