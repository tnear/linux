# chown

`chown` - change owner - change file owner and group

## Change owner to nobody
The `nobody` user in Linux owns no files, is in no privileged groups, and has the smallest subset of abilities.

```
# create a file owned by self
$ touch file.txt
$ ll !$
-rw-r--r-- 1 kali kali 0 Mar 24 17:24 file.txt

# change owner to 'nobody'
$ sudo chown nobody file.txt

$ ll file.txt
-rw-r--r-- 1 nobody kali 0 Mar 24 17:26 file.txt
```

## Change owner and group
Use `<owner>:<group>` to change both.

```
$ sudo chown nobody:team file.txt
```

## Change group only
Use `:<group>` to change group without changing owner.

```
$ sudo chown :team file.txt
```
