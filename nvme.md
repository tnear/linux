# NVMe

Non-Volatile Memory is a specification for accessing a computer's non-volatile storage attached via a PCI Express bus.

An SSD runs a *command set* over a *transport*. For example, AHCI (the command set) runs over SATA. SCSI runs over SAS. NVMe runs over PCIe (local) or RoCE (remote).

NVMe is faster and more parallel than SAS.

## NVMe controllers
A controller is the physical hardware component which manages communication between the host system and the actual flash memory.

### Responsibilities for controller
- Hardware management: each NVMe device has at least one controller which handles command processing, wear leveling, and garbage collection
- Command queues: controllers implement multiple submission and completion queues for parallel command processing
- Identification: each controller has a unique identifier

### NVMe Identify Controller (`id-ctrlr`)
Prints information about a device, such as number of namespaces supported and model number.
```
sudo nvme id-ctrl /dev/nvme2
mn        : SAMSUNG MZWLJ7T6HALA-00AU3  # model number
nn        : 32  # number of namespaces
```

## NVMe namespaces
Namespaces are logical divisions of the storage space that can be separately addressed. One controller can manage many namespaces.

### Responsibilities of namespace
Namespaces provide addressing and isolation.

### List NVMe namespaces
```
sudo nvme list
Node          Generic      Namespace  Usage              Format
------------- -----------  ---------- ------------------ -------------
/dev/nvme2n1  /dev/ng2n1   0x1        2.20 TB / 2.20 TB  4 KiB +  0 B
```

### NVMe Identify Namespace (`id-ns`)
Prints information about a namespace, which belongs to a controller. Information includes block size and capacity.
```
sudo nvme id-ns /dev/nvme2n1
NVME Identify Namespace 1:
nsze    : 0x20000000
ncap    : 0x20000000
nuse    : 0x20000000
```

### Create and attach namespace
```bash
sudo nvme create-ns /dev/nvme0 --nsze=6104741 --ncap=6104741 --flbas=0 -dps=0
create-ns: Success, created nsid:1

sudo nvme attach-ns /dev/nvme0 --namespace-id=1 -controllers=0x41
attach-ns: Success, nsid:1
```

### Read and write
```bash
# save data to read and write to a file
$ echo 'hello world' > input.bin

# nvme write using data in file
$ sudo nvme write /dev/nvme0n1 --start-block=0 --data-size=4096 --data-file=input.bin

# read data to stdout
$ sudo nvme read /dev/nvme0n1 --start-block=0 --data-size=4096
hello world
```

## NVMe reservations
NVME reservations provide access control that enable multiple hosts to coordinate shared access to an NVMe namespace. A reservation allows a host to acquire exclusive access to a namespace. It also allows the reservation holder to grant specific types of access to other registered hosts.

### Acquiring a reservation
1. Host registers with a namespace using a unique registration key
    - `nvme resv-register`
1. Host acquires a reservation of a specified type
    - `nvme resv-acquire`
    - Different reservation types include exclusive, write exclusive
1. Host releases registration when done
    - `nvme resv-release`

## Resources
- https://www.youtube.com/watch?v=Qy1q4qT7b2M
- NVM Express over Fabrics with SPDK for Intel® Ethernet Products with RDMA (May 2021)
- https://narasimhan-v.github.io/2020/06/12/Managing-NVMe-Namespaces.html
- https://nvmexpress.org/resource/nvme-namespaces/
