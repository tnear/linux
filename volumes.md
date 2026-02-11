# Volumes

## Terminology
- Disk: physical device such as HDD or SSD. Ex: `/dev/sda1`, `/dev/nvme0n1`
- Partition: a defined section of a disk. Each partition can be formatted and used separately. Ex: `/dev/sda1`, `/dev/nvme0n1p1`
- Volume: a storage area that is not necessarily limited to a single partition or disk

## Physical volume
A physical volume is a storage device (such as a disk like `/dev/sda` or partition like `/dev/sda1`). They are created by Logical Volume Manager (LVM) using `pvcreate`.

## Logical volume
A logical volume (LV) is a software-defined flexible storage container which is made of one or more physical volumes. They provide an abstraction layer between physical hardware (disk/partitions) and filesystems.

### Features
- Resizing: logical volumes can grow or shrink without repartitioning the disk
- Snapshots
- Spanning multiple disks

## Volume group
A volume group is a storage pool which combines one or more physical volumes. Volume groups are then divided into logical volumes. A volume group is created using `vgcreate`.
