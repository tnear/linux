# lshw

`lshw` - list hardware

## Introduction
`lshw` inventories a Linux system’s hardware: CPU, RAM, disks, NICs, PCI devices, firmware details, and more. Run with sudo for most complete information.

```bash
$ sudo lshw -short
H/W path     Class          Description
=======================================
             system         Standard PC (i440FX + PIIX, 1996)
/0           bus            Motherboard
/0/400       processor      AMD EPYC 7J13 64-Core Processor
/0/1000      memory         256GiB System Memory
/0/1000/0    memory         16GiB DIMM RAM
...
```

## Get PCI address
```bash
$ lshw -class network -businfo
Bus info          Device       Class          Description
=========================================================
pci@0000:4b:00.0  ens300f0np0  network        MT2892 Family [ConnectX-6 Dx]
```
