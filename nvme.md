# NVMe

Non-Volatile Memory Express (NVMe) is a specification for accessing a computer's non-volatile storage attached via a PCI Express (PCIe) bus.

```
[NVMe] <-> [PCIe bus] <-> [CPU]
```

An SSD runs a *command set* over a *transport*. For example, AHCI (the command set) runs over SATA. SCSI runs over SAS. NVMe runs over PCIe (local) or RoCE (remote).

NVMe is faster and more parallel than SAS.

## NVMe subsystems
A subsystem is a top-level logical entity in NVMe. It contains one or more controllers. A subsystem has a unique identifier called an *nqn* (nvme qualified name).

Possible subsystem, controller, namespace hierarchy:
```
Subsystem (NQN: nqn.example.com:subsystem1)
├── Controller 1 (/dev/nvme0)
│   ├── Namespace 1 (/dev/nvme0n1)
│   └── Namespace 2 (/dev/nvme0n2)
└── Controller 2 (/dev/nvme1)
    ├── Namespace 1 (/dev/nvme1n1) # Can be the same namespace as nvme0n1
    └── Namespace 3 (/dev/nvme1n3)
```

### Connecting to a subsystem
Use [`nvme connect`](nvme-connect.md).

## NVMe controllers
A controller is the physical hardware component which manages communication between the host system and the actual flash memory. Ex: `/dev/nvme0`.

### Responsibilities for controller
- Hardware management: each NVMe device has at least one controller which handles command processing, wear leveling, and garbage collection
- Command queues: controllers implement multiple submission and completion queues for parallel command processing
- Identification: each controller has a unique identifier

### NVMe Identify Controller (`id-ctrl`)
See [`id-ctrl`](nvme-id-ctrl.md).

## NVMe namespaces
Namespaces are logical divisions of the storage space that can be separately addressed. One controller can manage many namespaces. Ex: `/dev/nvme0n1`.

### Responsibilities of namespace
Namespaces provide addressing and isolation.

### List NVMe namespaces
See [`nvme list`](nvme-list.md).

### NVMe Identify Namespace (`id-ns`)
See [`id-ns`](nvme-id-ns.md).

### Create and attach namespace
See [`nvme-create-ns`](nvme-create-ns.md).

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

## Logical block addressing
Logical block addressing (LBA) specifies the location of blocks of data on secondary storage. LBA is a simple sequential number. Block 0 is the first on the drive, block 1 is the second, etc. Data is requested and written in block sizes.

NVMe drives typically use 4 KB block sizes (as compared to HDDs which often use 512-bytes). This larger size is more efficient for flash memory.

Each namespace has its own LBA. NVMe commands specify the LBA number.

### Read-modify-write
Read-modify-write happens when a drive *reads* an existing block into memory, *modifies* the portion to change, then *writes* the entire block back to storage.

## Resources
- https://www.youtube.com/watch?v=Qy1q4qT7b2M
- NVM Express over Fabrics with SPDK for Intel® Ethernet Products with RDMA (May 2021)
- https://narasimhan-v.github.io/2020/06/12/Managing-NVMe-Namespaces.html
- https://nvmexpress.org/resource/nvme-namespaces/
- "Understanding NVMe Namespaces", https://youtu.be/7MYw-0qfpH8
