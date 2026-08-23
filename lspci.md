# lspci

`lspci` - list all PCI devices

See also: storage.git

## Introduction

Each `lspci` output line represents one PCIe function.

PCI (Peripheral Component Interconnect): a bus for attaching devices in a computer.

## Bus
A *bus* is a group of PCI devices an OS treats as being in the same place. Each bus has a number. Within that bus, each PCI function has an address.

```
bus : device . function
 5e :   04   .    0
```

## BDF
BDF (`Bus:Device.Function`) is the standard way to identify a PCIe device by its location on the bus. BDF is more stable than a name such as `/dev/nvme0n1`.

Example: `0000:5e:04.0`.

- `0000`: PCI domain
- `5e`: bus
- `04`: device
- `0`: function (for PF/VF, 0 = PF, >0 = VF)

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

# extra verbose output on specific PCIe device
$ lspci -vv -s 00:04.0
```

## Show kernel drivers

Use `-k` to show kernel drivers handling a device.

```bash
# shows uio_pci_generic driver is using BDF 00:04.0
$ lspci -k -s 00:04.0
00:04.0 Non-Volatile memory controller: Samsung Electronics Co Ltd NVMe SSD Controller PM173X
	Subsystem: My Device 487e
	Kernel driver in use: uio_pci_generic
	Kernel modules: nvme
```

## PCIe hierarchy

Use `-t` to show show a tree containing all buses, bridges, devices and connections between them.

The example below has one root (`0000:00`) which represents the one root bus visible to the OS (this is a VM).

```bash
$ lspci -v -t
-[0000:00]-+-00.0  Intel 440FX - 82441FX PMC (QEMU)
           +-01.0  Intel 87654SB PIIX3 ISA [Triton II]
           +-01.1  Intel 87654SB PIIX3 IDE [Triton II]
           +-01.2  Intel 87654SB PIIX3 USB [Triton II]
           +-01.3  Intel 87654AB/EB/MB PIIX4 ACPI
           +-02.0  Device 1234:1111 (QEMU)
           +-03.0  Red Hat Virtio network device
           +-04.0  Samsung NVMe SSD Controller PM173X
           +-05.0  Samsung NVMe SSD Controller PM173X
           +-0d.0-[01]----00.0  Red Hat Virtio SCSI
           \-0e.0-[02]--
```
