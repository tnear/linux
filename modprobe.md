# modprobe

`modprobe` - Add and remove modules from the Linux Kernel

Syntax: `sudo modprobe <options> <module name>`

## Add a module to Linux kernel
```
$ sudo modprobe rdma_cm

# confirm it is added
$ lsmod | grep rdma_cm
rdma_cm               151552  1 nvme_rdma
```

## Remove a module from the Linux kernel
Use `-r, --remove` to remove a module.
```
sudo modprobe -r rdma_cm
```
