# growpart

`growpart` - extend a partition in a partition table to fill available space

## Dry run

Use `-N, --dry-run` to see what would change.

```bash
# dry-run of growing partition `/dev/sda3' to fill all remaining space on /dev/sda
$ sudo growpart -N /dev/sda 3

NOCHANGE: partition 3 is size 4290566111. it cannot be grown
```
