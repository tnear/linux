UMASK

`umask` - get or set the file mode creation mask

`umask` controls which permission bits are prevented from being set when a new file is created. `022` is a common default.

## Introduction

Suppose a program requests this permission pattern:
```
requested:  111
mask:       010
result:     101
```

The middle bit was masked, so it was set to 0.

`umask` rules perform the following:
```
final permissions = requested permissions & ~umask
```

## Get current umask (in octal)
```bash
$ umask
022
```

022 / RWX means:
- mask no bits for user
- mask 2nd bit (W) for group
- mask 2nd bit (W) for all

## Change mask (symbolic)
Set the mask to allow the default file-creation permissions for `u`ser, `g`roup, and `o`ther.

```bash
$ umask u=rwx,g=rwx,o=rwx  # no space after comma
$ umask
000
```

## Creating a file
Programs normally request `666` for a new regular file:
```
requested: 666    rw-rw-rw-
umask:     022    ----w--w-
result:    644    rw-r--r--
```

The final permissions are `644`. `umask` never adds bits. GIven that `x` was never requested, it is unchanged.

## Change mask (octal)
```bash
$ umask 022
$ touch file.txt
$ ll file.txt
# With umask 022, the write bit is NOT set for group and all:
-rw-r--r-- 1 user user 0 file.txt

# Mask ALL bits (no permissions for anyone):
$ umask 777
$ touch file.txt
$ ll file.txt
---------- 1 user user 0 file.txt
```
