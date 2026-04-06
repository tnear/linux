# growpart

`growpart` - extend a partition in a partition table to fill available space

See also: [`fdisk`](fdisk.md)

## Dry run

Use `-N, --dry-run` to see what would change.

```bash
# use fdisk to find which partition to grow
$ sudo fdisk -l

# dry-run of growing partition /dev/sda3 to fill all remaining space on disk /dev/sda
$ sudo growpart -N /dev/sda 3

NOCHANGE: partition 3 is size 4290566111. it cannot be grown
```
