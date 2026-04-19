# yum

`yum` - redirecting to DNF Command Reference

The Yellowdog Updater Modified (YUM) is a package manager commonly used on Fedora, Red Hat, and Oracle Linux.

See also [`yum-config-manager`](yum-config-manager.md), [`dnf`](dnf.md)

## Install a package
```bash
$ sudo yum install <pkg_name>
```

### Custom config file
Use the `-c` flag to use a custom config file:

```bash
yum install -c /etc/compute/vmi/snapshot.yum.conf <pkg_name>
```

## Search for a package
Use `search`:
```bash
$ yum search rdma
========== Name & Summary Matched: rdma ==========
librdmacm.x86_64 : Userspace RDMA Connection Manager
rdma-core.x86_64 : RDMA core userspace libraries and daemons
```

## View package information
Use `info`:
```bash
$ sudo yum info rdma-core

Installed Packages
Name         : rdma-core
Version      : 48.0
Release      : 1.el9
Architecture : x86_64
Size         : 109 k
Source       : rdma-core-48.0-1.el8.src.rpm
Repository   : @System
Summary      : RDMA core userspace libraries and daemons
```

## List packages

### List all packages
```bash
$ yum list installed
```

### Check if package is installed
Use `yum list installed <pkg_name>` to check if a package is installed. This syntax supports wildcards (globs):

```bash
$ yum list installed perl*
Installed Packages
perl-Carp.noarch     1.42-396.el8   @ol8_baseos_latest
perl-Digest.noarch   1.17-395.el8   @ol8_baseos_latest
```

## Remove (uninstall)
```bash
$ sudo yum remove <pkg_name>
# or
$ sudo yum erase <pkg_name>
```

## Repositories

A `yum repo` is a set of named package sources. `yum` uses for multiple repositories for easier management and organization.

Common repositories:
- `baseos`: core OS packages
- `appstream`: user-space apps and language runtimes
- `updates`: for security and bug fixes

### Repository stanza

A *repo stanza* defines one package repository.

```
[ol9-latest-yum-remote]
name=ol9-latest-yum-remote
baseurl=https://example.com/ol9-latest-yum-remote
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY
```

- `baseurl`: where yum fetches packages
- `gpgcheck=1`: instruct `yum` to verify package signatures using `gpgkey`
- `gpgkey`: public key location (stored on disk)

### List repositories
```bash
$ yum repolist
repo id            repo name
ol8_appstream      Oracle Linux 8 Application Stream
ol8_baseos_latest  Oracle Linux 8 BaseOS Latest (x86_64)

# also list disabled repositories
$ yum repolist all
```
