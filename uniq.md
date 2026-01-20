# uniq

`uniq` - report or omit repeated lines

## Basic usage
```bash
$ cat file.txt
a
b
a
a
b
c

# uniq detects consecutive duplicate lines:
$ uniq sort.txt
a
b
a
b
c

# Sorting data first will ensure lines are globally unique:
# (sort -u file.txt also works)
$ sort file.txt | uniq
a
b
c
```

## Prefix lines by the count of occurrences
Use `-c, --count` to print count information.

```bash
$ sort file.txt | uniq -c
    4 aa
    2 b
    1 bc
    1 d
```

## Print repeated lines
Use `-d, --repeated` to display repeated lines. Useful to find duplicates.

```bash
# note the duplicate 'a'
$ cat /tmp/lines.txt
a
b
a

# prints 'a' because it is repeated
cat /tmp/lines.txt | sort | uniq -d
a
```
