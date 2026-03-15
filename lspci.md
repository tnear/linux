# lspci

`lspci` - list all PCI devices

PCI (Peripheral Component Interconnect): a bus for attaching devices in a computer

## Basic usage
```bash
$ lspci
00:00.0 Host bridge: Intel Corporation 440FX - 82441FX PMC [Natoma] (rev 02)
00:02.0 VGA compatible controller: Device 1234:1111 (rev 02)
00:03.0 Ethernet controller: Red Hat, Inc. Virtio network device
00:04.0 Non-Volatile memory controller: Samsung Electronics Co Ltd NVMe SSD Controller PM173X
00:0d.0 PCI bridge: Red Hat, Inc. QEMU PCI-PCI bridge
01:00.0 SCSI storage controller: Red Hat, Inc. Virtio SCSI

# verbose output
$ lspci -v
```
