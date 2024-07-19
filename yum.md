# yum

yum - redirecting to DNF Command Reference

The Yellowdog Updater Modified (YUM) is a package manager commonly used on Fedora, Red Hat, and Oracle Linux.

## Install a package
```
$ sudo yum install <pkg_name>
```

### Custom config file
Use the `-c` flag to use a custom config file:

```
yum install -c /etc/compute/vmi/snapshot.yum.conf <pkg_name>
```


## Search for a package
Use `search`:
```
$ yum search rdma

========== Name & Summary Matched: rdma ==========
librdmacm.x86_64 : Userspace RDMA Connection Manager
rdma-core.x86_64 : RDMA core userspace libraries and daemons
```
