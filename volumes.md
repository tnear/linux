# Volumes

## Terminology
- Disk: physical device such as HDD or SSD. Ex: `/dev/sda`, `/dev/nvme0n1`
- Partition: a defined section of a disk. Each partition can be formatted and used separately. Ex: `/dev/sda1`, `/dev/nvme0n1p1`
- Volume: a storage area that is not necessarily limited to a single partition or disk

## Physical volume
See [`pvcreate`](pvcreate.md).

## Logical volume
A *logical volume* (LV) is a software-defined flexible storage container which is made of one or more physical volumes. They provide an abstraction layer between physical hardware (disk/partitions) and filesystems.

### Features
- Resizing: logical volumes can grow or shrink without repartitioning the disk
- Snapshots
- Spanning multiple disks

## Volume group
See [`vgcreate`](vgcreate.md).
