# lvremove

`lvremove` — Remove logical volume(s) from the system

See also: [`lvcreate`](lvcreate.md), [`umount`](umount.md), [volumes](volumes.md)

## Remove logical volume
```bash
# 1. unmount first (if mounted)
$ sudo umount /mount/point

# 2. remove logical volume
sudo lvremove /dev/vg00/lv_name

Do you really want to remove active logical volume vg00/lv_name? [y/n]: y
```
