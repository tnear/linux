# head

`head` - output the first part (10 lines) of files

## Basic usage
```bash
# output first 10 lines of file
$ head /etc/passwd
```

## Specify number of lines
Use `-n` to specify the number of lines
```bash
# Output first two lines of /etc/passwd:
$ head -n2 /etc/passwd
```

## Specify number of bytes
Use `-c`.
```bash
output first 10 bytes:
$ head -c10 <file>
```

## Output multiple files
```bash
# comma separated
head f1.txt f2.txt
==> f1.txt <==
a

==> f2.txt <==
b
```

```bash
# glob
head files_*.txt
```

## Output all lines
This can be useful if you want to output multiple files and see the file name for each (`cat`, for example, does not output file name).
```bash
# large -n
head -n 99999 <file_glob>

# using -n -0 (not as widely supported)
# (-n0 does not work)
head -n -0 <file_glob>
```
