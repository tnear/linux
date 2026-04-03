# rpm

`rpm` - RPM Package Manager

See also: [`dnf`](dnf.md)

## Overview
RPM (Red Hat Package Manager) is the core package management tool for Red Hat-based Linux distributions (like RHEL, Oracle Linux, CentOS, Fedora).

## Common commands

| Command            | Description                   |
|--------------------|-------------------------------|
| `rpm -qa`          | List all installed packages   |
| `rpm -q <package>` | Check if package is installed |
| `rpm -qi <package>`| Package details               |

## Find what package a command belongs to
Use `-f` flag to specify a file path.
```bash
# clear command belongs to ncurses
$ rpm -qf $(which clear)
ncurses-6.2-12.20210508.el9.x86_64
```
