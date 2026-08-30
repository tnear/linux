# mdadm

`mdadm` - multiple disk admin - manage MD devices aka Linux Software RAID

See also: storage.git

## Introduction
`mdadm` configures software RAID, which combines several disks into one logical device for redundancy or speed without a dedicated RAID controller card.

Tthe actual RAID logic lives in the kernel, in a driver called `md` (multiple device).

## RAID levels
| Level | What it does | Tolerates |
|---|---|---|
| RAID 0 | Stripes data across disks for speed | No failuresA: one disk dies, everything's gone |
| RAID 1 | Mirrors. Every disk holds a full copy | 1 disk failure |
| RAID 5 | Stripes + parity across 3+ disks | 1 disk failure |
| RAID 6 | Like RAID 5, extra parity | 2 disk failures |
| RAID 10 | Mirrored pairs, striped together | 1 per mirrored pair |
