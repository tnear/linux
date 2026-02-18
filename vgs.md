# vgs

`vgs` - Display information about volume groups

See also: [`vgdisplay`](vgdisplay.md), [volumes](volumes.md)

## Basic usage
```bash
# example of 1 volume group (vg00)
$ sudo vgs
VG   #PV #LV #SN Attr   VSize  VFree
vg00   1   6   0 wz--n- 74.37g 10.48g
```

### Key
- `VG`: volume group name
- `#PV`: number of physical volumes in VG
- `#LV`: number of logical volumes in VG
- `#SN`: number of snapshots in VG
- `Attr`: set of attributes
    - `w`: VG is writable
    - `z`: VG is resizable
    - `n`: not allocatable
- `VSize`: VG total size (sum of PVs)
- `VFree`: Free space in VG
