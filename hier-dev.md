# hier-dev

# `/dev`
Special or device files. Usually hardware represented as a file.

## `/dev/mem`
```
$ man mem
```
Main (physical) memory in file form. Root-protected.

## `/dev/null`
```
$ man null
```
Data sink. Discards everything written to it. Useful to suppress output.

### Examples
```bash
# Produces messy output due to permission denied errors
$ grep -r hello /sys/

# Direct stderr to /dev/null to ignore permission errors
$ grep -r hello /sys/ 2> /dev/null

# Suppress successful pings so that only errors appear in terminal
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
This directory provides a special interface to the kernel's huge page memory management. These are binary files.

```bash
$ ll /dev/hugepages
.rw-------@ 1.1G root root 14 May 17:51 app_with_huge_pages_0
.rw-------@ 1.1G root root 14 May 17:51 app_with_huge_pages_1
.rw-------@ 1.1G root root 14 May 17:51 app_with_huge_pages_2
.rw-------@ 1.1G root root 14 May 17:51 app_with_huge_pages_3
```
