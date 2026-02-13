# setfacl

`setfacl` - set file access control lists

See also: [`getfacl`](getfacl.md), [`chmod`](chmod.md)

## Introduction
`setfacl` sets Access Control Lists (ACLs), which are more granular than standard UNIX permissions.

`setfacl` is useful for granting access to specific users without changing the file's owner or group.

## Basic usage
```bash
# use -m (modify) to give user 'alice' RW access
setfacl -m u:alice:rw file.txt

# Give group 'developers' read/execute access
setfacl -m g:developers:rx /var/www

# use -x to remove ACL from user 'bob'
setfacl -x u:bob file.txt

# use -b, --remove-all to remove all ACLs from a file
setfacl -b file.txt
```
