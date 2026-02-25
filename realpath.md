# realpath

`realpath` - print the resolved path

## Get full path of a file
```bash
$ realpath file.c
/tmp/dir/file.c
```

## Relative path
Use `--relative-to` to get the relative path between two files.

```bash
$ touch /tmp/path1/file1.txt /tmp/path1/path2/file2.txt

$ realpath --relative-to=/tmp/path1/file1.txt /tmp/path1/path2/file2.txt 
../path2/file2.txt

$ realpath --relative-to=/tmp/path1/path2/file2.txt /tmp/path1/file1.txt 
../../file1.txt
```
