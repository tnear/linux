# sort

`sort` - sort lines of text files

See also: [`uniq`](uniq.md)

## Basic usages
```bash
# sort file
$ sort /etc/passwd

# Sort processes by name
$ ps -aux | sort

# Sort numerically
# Ex: [1, 2, 10] instead of [1, 10, 2]
$ sort -n

# Reverse order of sort
$ sort -r

# Unique sort (alternative for sort | uniq)
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
