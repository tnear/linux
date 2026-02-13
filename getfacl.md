# getfacl

`getfacl` - get file access control lists

See also: [`setfacl`](setfacl.md)

## Basic usage
```bash
# setfacl allows granting users access even if they are not part of a group
$ ll a.txt
-rw-rw----+ 1 my_user my_grp 0 Feb 13 16:47 a.txt

# give user 'nobody' RW permissions
$ sudo setfacl -m u:nobody:rw a.txt

# view full ACLs
$ getfacl a.txt
# file: a.txt
# owner: my_user
# group: access-login
user::rw-
user:nobody:rw-
group::---
mask::rw-
other::---
```
