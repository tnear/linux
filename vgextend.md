# vgextend

`vgextend` - Add physical volumes to a volume group

See also: [volumes](volumes.md)

## Introduction

A *volume group* is a storage pool. `vgextend` adds another physical volume to that pool.

Suppose you have:
```
/dev/sda2 -> PV
               \
                vgdata
                  |
                  +-- lvapp
```

and `vgdata` is running out of space. You attach another disk, `/dev/sdb`, then make it a physical volume: `sudo pvcreate /dev/sdb`, then add it to the existing volume group:

```bash
sudo vgextend vgdata /dev/sdb
```

Before `vgextend`:
```
/dev/sda2
    |
    +---- vgdata ---- lvapp
```

After `vgextend`:
```
/dev/sda2 --\
             +---- vgdata ---- lvapp
/dev/sdb  --/
```
