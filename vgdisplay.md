# vgdisplay

`vgdisplay` - Display volume group information

See also: [`vgs`](vgs.md), [volumes](volumes.md)

## Basic usage
```bash
$ sudo vgdisplay
  --- Volume group ---
  VG Name               vg00
  System ID
  Format                lvm2
  Metadata Areas        1
  Metadata Sequence No  7
  VG Access             read/write
  VG Status             resizable
  MAX LV                0
  Cur LV                6
  Open LV               6
  Max PV                0
  Cur PV                1
  Act PV                1
  VG Size               74.37 GiB
  PE Size               4.00 MiB
  Total PE              19039
  Alloc PE / Size       16356 / 63.89 GiB
  Free  PE / Size       2683 / 10.48 GiB
```
