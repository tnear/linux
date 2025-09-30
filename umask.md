UMASK

`umask` — get or set the file mode creation mask

Masks RWX permission bits during file creation. 022 is a common default.

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
Set RWS bits for *all* files for `u`ser, `g`roup, and `o`ther.

```bash
$ umask u=rwx,g=rwx,o=rwx  # no space after comma
$ umask
000
```

## Change mask (octal)
```bash
$ umask 022
$ touch file.txt
$ ll file.txt
# With umask 022, the write bit is NOT set for group and all:
-rw-r--r-- 1 kali kali 0 file.txt

# With umask 000, the read and write bits are set for everyone:
$ umask 000
$ touch file.txt
$ ll file.txt
-rw-rw-rw- 1 kali kali 0 file.txt

# Mask ALL bits (no permissions for anyone):
$ umask 777
$ touch file.txt
$ ll file.txt
---------- 1 kali kali 0 file.txt
```
