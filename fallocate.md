# fallocate

`fallocate` - preallocate or deallocate space to a file

`fallocate` is significantly faster than creating a file by filling it with zeroes.

See also: [`truncate`](truncate.md), [`dd`](dd.md)

## Comparison to similar functions
- Use `fallocate` to guarantee disk space reserved
- Use `truncate` if sparse files are acceptable
- Use `dd` to write data (ex: benchmarking)

## Common usages
Use `-l` to specify a file length (size).
```bash
# preallocate a 100-byte file
$ fallocate -l 100 my_file

# preallocate 10MB file
$ fallocate -l 10MB my_mb_file
```
