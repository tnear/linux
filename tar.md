# tar

`tar` - Tape Archive - an archiving utility
Combines files. Does not compress by default.

Syntax:
```bash
tar [options] [archive-file] [file1 file2 ...]
```

## Common flags
- `-c, --create`: create
- `-f, --file`: specify file name
- `-t, --list`: list contents of archive
- `-v, --verbose`: output
- `-x, --extract`: archive
- `-z, --gzip`: compress directories and files

## Create archive
Create archive `my_tar.tar` by combining files `f1.txt` and `f2.txt`.
```bash
tar -cf my_tar.tar f1.txt f2.txt
```

## Extract archive
`tar -xf my_tar.tar`

## Compress and decompress `tar.gz`

```bash
# Compress directories or files into archive (my_tar_tar.gz)
`tar -czf my_tar.tar.gz dir_or_files`

# Decompress and extract
`tar -xzf my_tar.tar.gz`
```

## Display contents without extracting

Use `-t, --list` to print file names.
```bash
$ tar -tf my_tar.tar
f1.txt
f2.txt
```
