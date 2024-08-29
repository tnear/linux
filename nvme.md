# NVMe

Non-Volatile Memory is a specification for accessing a computer's non-volatile storage attached via a PCI Express bus.

An SSD runs a *command set* over a *transport*. For example, AHCI (the command set) runs over SATA. SCSI runs over SAS. NVMe runs over PCIe (local) or RoCE (remote).

NVMe is faster and more parallel than SAS.

## read and write
```
# save data to read and write to a file
$ echo 'hello world' > input.bin

# nvme write using data in file
$ sudo nvme write /dev/nvme0n1 --start-block=0 --data-size=4096 --data-file=input.bin

# read data to stdout
$ sudo nvme read /dev/nvme0n1 --start-block=0 --data-size=4096
hello world
```

## Resources
- https://www.youtube.com/watch?v=Qy1q4qT7b2M
- NVM Express over Fabrics with SPDK for Intel® Ethernet Products with RDMA (May 2021)
