# hier-dev

# `/dev`
Special or device files. Usually hardware represented as a file.

## `/dev/mem`
Main (physical) memory in file form. Root-protected.

## `/dev/null`
Data sink. Discards everything written to it. Useful to suppress output.

### Examples
```bash
# Use '2>' (stderr) to direct to /dev/null to ignore permission errors
$ grep -r hello /sys/ 2> /dev/null

# Suppress successful pings (stdout, '>') so that only errors appear in terminal
$ ping google.com > /dev/null
```

## `/dev/urandom`
```bash
# RNG generation. u = unlimited.
# More suited for cryptographic applications than /dev/random.
# Read random data:
$ read RAND < /dev/urandom
$ echo $RAND
<binary data>
```

## `/dev/hugepages`
Provides a special interface to the kernel's huge page memory management. These are binary files.

```bash
$ ll /dev/hugepages
.rw-------@ 1.1G root root 14 May 17:51 app_with_huge_pages_0
.rw-------@ 1.1G root root 14 May 17:51 app_with_huge_pages_1
.rw-------@ 1.1G root root 14 May 17:51 app_with_huge_pages_2
.rw-------@ 1.1G root root 14 May 17:51 app_with_huge_pages_3
```

## `/dev/full`
A file that is always "full". Any attempt to write to it will fail. It is useful for simulating full disk conditions, such as for testing.

```bash
$ echo 'test' > /dev/full
echo: write error: no space left on device
```

## `/dev/mapper`
Device-mapper is a kernel framework that allows creating layered block devices. Inside are user-friendly names for virtual block devices.

```bash
$ ll /dev/mapper
total 0
crw-------. 1 root root 10, 236 Mar 24 22:50 control
lrwxrwxrwx. 1 root root       7 Mar 24 22:50 volume-oled -> ../dm-1
lrwxrwxrwx. 1 root root       7 Mar 24 22:50 volume-root -> ../dm-0
```
