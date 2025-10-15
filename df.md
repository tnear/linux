# df

`df` - disk free - report file system space usage

See also: [`du`](du.md)

## Show disk usage of drive containing home directory (~)
```bash
$ df -h ~
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        79G   31G   44G  41% /
```

## `-h, --human-readable`
G=gigabyte, M=megabyte
```bash
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            1.9G     0  1.9G   0% /dev
tmpfs           393M  1.2M  391M   1% /run
/dev/sda1        78G   13G   62G  17% /
```

## `-T, --print-type`
Include 'Type' column in `df` output.

```bash
$ df -T
Filesystem  Type    Size  Used Avail Use% Mounted on
udev        ext4    1.9G     0  1.9G   0% /dev
tmpfs       ext4    393M  1.2M  391M   1% /run
/dev/sda1   xfs      78G   13G   62G  17% /
```

### Query particular directory to learn its file system type
Use `-T, --print-type`.

```bash
# syntax
$ df -T /path/to/dir

# example
$ df -T /dev/sda1
Filesystem     Type 1K-blocks  Used Available Use% Mounted on
/dev/sda1      vfat    102156  6352     95804   7% /boot/efi
```
