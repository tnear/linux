# vipw

`vipw` - edit the password, group, shadow-password or shadow-group file

See also: [`vigr`](vigr.md)

## Introduction

`vipw` is an administrative command for safely editing the system password database, `/etc/passwd`. It locks the file to  prevent concurrent access.

Typically, commands such as [`useradd`](useradd.md), [`usermod`](usermod.md), and [`usermod`](usermod.md) are preferred.

## Basic usage

```bash
$ sudo vipw
```
