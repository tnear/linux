# ssh-copy-id

`ssh-copy-id` — use locally available keys to authorise logins on a remote machine

See also: [`ssh-keygen`](ssh-keygen.md)

## Basic usage

`ssh-copy-id` copies public keys to remote machines to allow connecting without being prompted for a password.

```bash
# first, generate an SSH key pair (if haven't already)
$ ssh-keygen

# then copy to remote host
# syntax: ssh-copy-id username@remote_host
$ ssh-copy-id my_user@192.168.1.20

# use -i to specify a specific key
$ ssh-copy-id -i ~/.ssh/my_other_key.pub my_user@192.168.1.20
```
