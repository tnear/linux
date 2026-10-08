# dpkg

`dpkg` - package manager for Debian

## Basic usage
```bash
# use -s, --status to check if package is installed
$ dpkg -s coreutils
Package: coreutils
Essential: yes
Status: install ok installed

# use -r to remove a package:
$ dpkg -r <pkg_name>
```
