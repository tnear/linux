# setpriv

`setpriv` - run a program with different Linux privilege settings

See also: [`runuser`](runuser.md), [PAM](PAM.md)

## Basic usage
`setpriv` can modify parameters such as UID/GID, capabilities, SELinux, and more. Unlike `su` and `runuser`, it does **not** use [PAM](PAM.md).

```bash
# change effective user (reuid) and group (regid).
# --init-groups is used to set supplementary groups that 'my_user' has. It acts like 'my_user' normally does.
setpriv --reuid=my_user --regid=my_user --init-groups ./my_app
```
