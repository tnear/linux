# cpio

cpio – copy files to and from archives

"copy in, copy out"

## Common flags

- `o`: output (copy-out)
- `i`: input (copy-in)
- `v`: verbose

## Basic example
```bash
# create files
$ echo 'one' >> file.txt; echo 'two' >> file2.txt;

# list files
$ ls file*
file.txt  file2.txt

# archive them
$ ls file* | cpio -ov > archive.cpio
file.txt
file2.txt
1 block

# remove original files
$ rm file*.txt

# extract files
$ cpio -iv < archive.cpio
file.txt
file2.txt
1 block

$ cat file*.txt
one
two
```
