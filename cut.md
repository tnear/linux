# cut

`cut` - remove sections from each line of files

Source code: https://github.com/coreutils/coreutils/blob/master/src/cut.c

## Basic usage

```bash
# setup file
$ echo 'a bb c c\nd e ff g' >> file.txt
$ cat file.txt
a bb c c
d e ff g
```

```bash
# Cut the 2nd field using space as a delimiter:
$ cut -f 2 -d ' ' file.txt
bb
e
```

## Get sorted user names with an active process
```bash
$ ps -aux | cut -f 1 -d ' ' | sort | uniq
```

## `-f`, specify which fields to select

```bash
# get field 1 and field 6 using comma separator
$ cut -d ':' -f 1,6 /etc/passwd

# get fields 1, 3, 4, 5 using comma and hyphen
$ cut -f 1,3-5 file.txt

# get fields 1 through 5 with leading comma
cut -f -5 file.txt

# get fields 5 through end with trialing comma
cut -f 5- file.txt
```
