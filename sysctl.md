# sysctl

sysctl - configure kernel parameters at runtime

## -a, --all
This displays all values currently available.

This finds all parameters about "hugepages":
```
$ sudo sysctl -a | grep hugepages

vm.nr_hugepages = 8192
vm.nr_hugepages_mempolicy = 8192
vm.nr_overcommit_hugepages = 0
```

## -p, --load
Use `sysctl -p` to reload `/etc/sysctl.conf` after changing the file.
