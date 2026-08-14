# vgcreate

`vgcreate` - Create a volume group

See also: [volumes](volumes.md)

## Introduction
A *volume group* (VG) is a storage pool which combines one or more physical volumes. Volume groups are then divided into logical volumes. A volume group is created using `vgcreate`.

## Hierarchy

`vgcreate` creates a volume group.
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
