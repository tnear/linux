# SELinux

SELinux is a mandatory access control (MAC) system built into the Linux kernel, originally developed by the NSA and later merged into mainline Linux. It adds a much stricter, fine-grained security layer on top of the traditional Unix permission model.

See also: [`getenforce`](getenforce.md), [`setenforce`](setenforce.md), [`sestatus`](sestatus.md), [`matchpathcon`](matchpathcon.md), [`chcon`](chcon.md), [`restorecon`](restorecon.md), [`getsebool`](getsebool.md)

## Motivation
Standard Linux permissions (`rwx`, users, groups) are discretionary access control (DAC): the owner of a file decides who can access it, and any process running as a user inherits that user's full permissions. If an attacker compromises a process (say, a web server), they typically get everything that process's user account can do.

SELinux adds a second, independent layer of restrictions that apply regardless of standard file permissions. Even if a process technically "owns" a file or runs as root, SELinux can still block it from doing something it shouldn't.

## Modes
- `enforcing` (1): blocks violations
- `permissive` (0): logs violations without blocking
- `disabled`: turns off SELinux completely

### Commands
- Enable SELinux: `sudo setenforce 1`
- Permissive SELinux: `sudo setenforce 0`
- Query SELinux status: `getenforce`

## Security context
A *security context*, also known as *security label*, is a set of attributes that SELinux uses to determine what is allowed.

A security context has four parts (*user:role:type:level*):
1. `user`: tells which users the rule applies to. Has "_u" suffix, ex: `user_u`
1. `role`: limits the actions that users can perform. Has "_r" suffix, ex: `system_r`
1. `type`: has "_t" suffix, ex: "httpd_t" for web server or "var_t" for files in `/var`
1. `level` (optional): range of clearance levels, such as `s0` or `s1`

Generally, **type** is the most useful to manage.

### Annotation
An example security context is: `unconfined_u:object_r:user_home_t:s0`.

- `unconfined_u` (user): any ordinary user
- `object_r` (role): typically a file (files are objects)
- `user_home_t` (type): a file in a user's home directory
- `s0` (level): baseline sensitivity (no special restrictions)

### Labeling example

The example below shows a harmless example of a wrong SELinux and how to repair it.

```bash
# print context (note the 'user_home_t' type)
$ cd ~
$ touch selinux-demo
$ ls -Z selinux-demo
unconfined_u:object_r:user_home_t:s0 selinux-demo

# print context of unrelated file
$ ls -Z /etc/passwd
system_u:object_r:passwd_file_t:s0 /etc/passwd

# set invalid label using a reference
$ sudo chcon --reference=/etc/passwd selinux-demo

# note how the type label updated to 'passwd_file_t'
$ ls -Z selinux-demo
system_u:object_r:passwd_file_t:s0 selinux-demo

# Print mismatch. matchpathcon prints what label a
# pathname should have.
$ matchpathcon -V selinux-demo
selinux-demo has context system_u:object_r:passwd_file_t:s0, should be <none>

# Restore context (-v = verbose). restorecon restores the label
# that SELinux policy says a pathname should have.
$ sudo restorecon -v selinux-demo
Relabeled /home/tnear/selinux-demo from system_u:object_r:passwd_file_t:s0 to system_u:object_r:user_home_t:s0
```

TODO: matchpathcon, chcon

## Resources
- https://en.wikipedia.org/wiki/Security-Enhanced_Linux
- https://www.baeldung.com/linux/selinux
