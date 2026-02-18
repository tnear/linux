# pvs

`pvs` — Display information about physical volumes

See also: [volumes](volumes.md), [`pvdisplay`](pvdisplay.md)

## Basic usage
`pvs` lists a summary of all the physical volumes.

```bash
$ sudo pvs
  PV         VG   Fmt  Attr PSize  PFree
  /dev/sda3  vg00 lvm2 a--  99.12g    0
```
