# df

`df` - disk free - report file system space usage

See also: [`du`](du.md)

## Show disk usage of drive containing home directory (~)
```
$ df -h ~
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        79G   31G   44G  41% /
```

## `-h, --human-readable`
G=gigabyte, M=megabyte
```
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            1.9G     0  1.9G   0% /dev
tmpfs           393M  1.2M  391M   1% /run
/dev/sda1        78G   13G   62G  17% /
```

## `-T, --print-type`
Include 'Type' column in `df` output.

```
$ df -T
Filesystem  Type    Size  Used Avail Use% Mounted on
udev        ext4    1.9G     0  1.9G   0% /dev
tmpfs       ext4    393M  1.2M  391M   1% /run
/dev/sda1   xfs      78G   13G   62G  17% /
```

### Query particular directory to learn its file system type
```
$ df -T /path/to/dir
```
