# truncate

`truncate` - shrink or extend the size of a file to the specified size

See also: [`dd`](dd.md), [`fallocate`](fallocate.md)

## Comparison to similar functions
See [`fallocate`](fallocate.md#comparison-to-similar-functions)

## Common usages

Notes:
- Shrinking files permanently deletes data
- Expanding files (sparse files) creates holes on many filesystems

```bash
# -s, --size=SIZE
# clear file without deleting
$ truncate -s 0 file.log

# set specific size (100 MB)
$ truncate -s 100M file.log

# remove last byte
truncate -s -1 my_file.log
```
