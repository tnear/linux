# lvdisplay

`lvdisplay` - Display information about a logical volume

See also: [`lvs`](lvs.md), [`lvcreate`](lvcreate.md), [volumes](volumes.md)

## Basic usage

```bash
$ sudo lvidsplay

  --- Logical volume ---
  LV Path                /dev/vg00/var
  LV Name                var
  VG Name                vg00
  LV Write Access        read/write
  LV Status              available
  # open                 1
  LV Size                41.89 GiB
  Current LE             10724
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     4096
  Block device           252:2

  --- Logical volume ---
  LV Path                /dev/vg00/var_log_audit
  LV Name                var_log_audit
  VG Name                vg00
  LV Write Access        read/write
  LV Status              available
  # open                 1
  LV Size                2.00 GiB
  Current LE             512
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     4096
  Block device           252:3
```
