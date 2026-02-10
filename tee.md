# tee

`tee` - read from standard input and write to standard output and files

Source code: https://github.com/coreutils/coreutils/blob/master/src/tee.c

See also: [heredocument](heredocument.md)

## `sudo` with `tee`

Note: `sudo echo` does not work.
```bash
# write to file as root
echo 'text here' | sudo tee /path/to/file

# use -a to append
echo 'text here' | sudo tee -a /path/to/file
```

## Print output and write to file
```bash
$ ps | tee ps.txt
```

## Append to previous file (instead of overwrite)
```bash
$ ps | tee -a ps.txt
```

## Use heredocument as root user
See [heredocument](heredocument.md#write-to-file-as-root-user) for an example.
