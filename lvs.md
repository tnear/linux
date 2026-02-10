# lvs

`lvs` - Display information about logical volumes

See also: [`lvdisplay`](lvdisplay.md), [`volumes`](volumes.md)


## Basic usage
```bash
$ sudo lvs
  LV            VG   Attr       LSize
  home          vg00 -wi-ao----  1.00g
  root          vg00 -wi-ao---- 10.00g
  swap          vg00 -wi-ao----  1.00g
  var           vg00 -wi-ao---- 41.89g
  var_log       vg00 -wi-ao----  8.00g
  var_log_audit vg00 -wi-ao----  2.00g
```
