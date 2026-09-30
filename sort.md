# sort

`sort` - sort lines of text files

See also: [`uniq`](uniq.md)

## Basic usages
```bash
$ sort /etc/passwd

# sort processes by name
$ ps -aux | sort

# sort numerically
# Ex: [1, 2, 10] instead of [1, 10, 2]
$ sort -n

# reverse order of sort
$ sort -r

# unique sort (alternative for sort | uniq)
$ sort -u file.txt
```

## Sort keys
- Use `-k (POS1,POS2)` to specify a sort key.
- Use `-t <char>` to set a field separator
```bash
# sort based on 2nd field
$ sort -k 2,2

# can leave off POS2 if it's the same as POS1:
$ sort -k 2

# Sort 3rd field using '.' as field separator.
# Can be useful for sorting 3rd field of ip addresses.
# Also uses 'n' suffix to sort numerically instead of alphabetically
$ sort -t . -k 3n
```

## Version sort
Use `-V, --version-sort` for natural sort of version numbers within text.

```bash
$ printf '%s\n' "1.5.10" "1.5.2" "1.5.1" | sort -V
1.5.1
1.5.2
1.5.10

# also works when there is a prefix
$ printf '%s\n' "v1.10" "v1.2" "v1.1" | sort -V
v1.1
v1.2
v1.10
```
