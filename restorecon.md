# restorecon

`restorecon` - restore file(s) default SELinux security contexts.

See also: [SELinux](se_linux.md), [`matchpathcon`](matchpathcon.md), [`chcon`](chcon.md)

## Introduction

`restorecon` is an SELinux utility that restores files and directories to the security contexts defined by SELinux policy.

## Usage

`restorecon` often works closely with `matchpathcon` to fix mismatches:

- `matchpathcon`: prints what label a path should have
- `restorecon`: sets path back to that expected label

```bash
# Restore context (-v = verbose). restorecon restores the label
# that SELinux policy says a pathname should have.
$ sudo restorecon -v selinux-demo
Relabeled /home/tnear/selinux-demo from system_u:object_r:passwd_file_t:s0 to system_u:object_r:user_home_t:s0
```

## Other flags

```bash
# recursively (and verbose) "fix" labels
$ sudo restorecon -Rv /var/www/html
```
