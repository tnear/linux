# vgextend

`vgextend` - Add physical volumes to a volume group

See also: [volumes](volumes.md), [`lvextend`](lvextend.md)

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

### `lvextend`

Now `vgdata` has more free space, but `lvapp` hasn't grown. The extra space sits unused in the pool until it is claimed with `lvextend`.

```bash
# use -r to resize the filesystem
sudo lvextend -r -L +20G /dev/vgdata/lvapp
```

Before `lvextend`:
```
/dev/sda2 --\
             +---- vgdata ---- lvapp (small)
/dev/sdb  --/                      \
                                 (free space unused)
```

After `lvextend`:
```
/dev/sda2 --\
             +---- vgdata ---- lvapp (bigger)
/dev/sdb  --/
```

### Summary

- `pvcreate`: turn a raw disk into a physical volume
- `vgextend`: add that physical volume to the pool (`vgdata`)
- `lvextend`: grow a logical volume (`lvapp`) using space from that pool
