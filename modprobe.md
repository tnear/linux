# modprobe

`modprobe` - Add and remove modules from the Linux Kernel

Syntax: `sudo modprobe <options> <module name>`

See also: [`lsmod`](lsmod.md)

## Add a module to Linux kernel
```bash
$ sudo modprobe rdma_cm

# confirm it is added
$ lsmod | grep rdma_cm
rdma_cm               151552  1 nvme_rdma
```

## Remove a module from the Linux kernel
Use `-r, --remove` to remove a module.
```bash
sudo modprobe -r rdma_cm
```

## Persistence
`modprobe` is *not* persistent (will not last across a reboot). For `systemd` systems, follow these steps to make their loading persistent:

```bash
# replace 'my-modules.conf' with a descriptive file name
sudo touch /etc/modules-load.d/my-modules.conf
echo my_module | sudo tee /etc/modules-load.d/my-modules.conf
```
