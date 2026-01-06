# userdel

`userdel` - delete a user account and related files

See also: [`useradd`](useradd.md)

## Basic usage
```bash
# Delete existing user 'new_user':
$ sudo userdel new_user
```

## Delete home directory
Use `-r` to remove user's home directory when deleting the user.
```bash
$ sudo useradd -m new_user  # -m to create user with home dir
$ sudo userdel -r new_user
# (this might warn about no mail spool)
```
