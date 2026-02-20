# SELinux

Security-Enhanced Linux (SELinux) is a Linux kernel security module that provides access control.

See also: [`getenforce`](getenforce.md), [`setenforce`](setenforce.md), [`sestatus`](sestatus.md)

## Commands
- Enable SELinux: `sudo setenforce 1`
- Permissive SELinux: `sudo setenforce 0`
- Query SELinux status: `getenforce`

## Modes
- `enforcing` (0): blocks violations
- `permissive` (1): logs violations without blocking
- `disabled`: turns off SELinux completely

## Security context
A *security context*, also known as *security label*, is a set of attributes that SELinux uses to determine what is allowed.

A security context has four parts (*user:role:type:level*):
1. `user`: tells which users the rule applies to. Has "_u" suffix, ex: *user_u*
1. `role`: limits the actions that users can perform. Has "_r" suffix, ex: *system_r*
1. `type`: has "_t" suffix, ex: "httpd_t" for web server or "var_t" for files in `/var`
1. `level` (optional): range of clearance levels, such as *s0* or *s1*

## Resources
- https://en.wikipedia.org/wiki/Security-Enhanced_Linux
- https://www.baeldung.com/linux/selinux
