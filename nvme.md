# NVMe

Non-Volatile Memory Express (NVMe) is a specification for accessing a computer's non-volatile storage attached via a PCI Express (PCIe) bus.

See also: [flash memory](flash-memory.md)

## Introduction
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
See [NVMe Controller](nvme-controller.md).

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

## Persistent reservations
NVMe persistent reservations (PR) allow multiple hosts to coordinate shared access to an NVMe namespace. This prevents data corruption when multiple initiators access the same target storage.

### Reservation types
1. Write Exclusive (WE)
    - Only the reservation holder can write
    - All hosts can read
1. Exclusive Access (EA)
    - Only the reservation holder can read/write
    - Other hosts are blocked completely
1. (see NVMe spec for more)

### CLI
See [`nvme resv-register`](nvme-resv-register.md).

### Preemption
Preempt is a command feature that allows a forcible removal of an existing reservation from another host. Preemption operates on NVMe *namespaces*.

Persistent reservations allow multiple hosts to coordinate exclusive access to storage resources. A preempt *removes* existing reservations, essentially "breaking the lock" that another host has placed on storage.

#### Use cases
- Cluster failover. When a node fails, another node preempts its reservations to take over storage access.
- Storage migration. Moving storage access from one host to another.
- Stuck reservations. When a host crashed, it leaves "zombie" reservations that need cleanup.
- Administrative override. Manual intervention to resolve storage conflicts.

#### Types
There are two types of preemption.

1. Preempt
    - Removes reservations held by specific reservation keys
1. Preempt and abort
    - Same as preempt, but also aborts outstanding I/O commands
    - More aggressive than regular preempt

#### Risks
- Data corruption. If Host A was mid-write when it was preempted, the data might be inconsistent.
- Split-brain scenarios. Both hosts might think they own the storage

## Asynchronous Event Notification
Asynchronous Event Notification (AEN) allows NVMe devices to notify the host system about important events or status changes without the host having to poll the device.

The NVMe controller can send these notifications about events such as errors or health status. They are sent *asynchronously*, meaning they do not interrupt normal I/O operations.

AENs are *admin* commands.

### Example use case
If an NVMe SSD starts overheating, it can send an AEN to the host OS, which can take action like throttling I/O or triggering an alarm.

## NVMe Multipath

NVMe multipath makes a single storage device accessible via multiple physical paths simultaneously. If one path fails, I/O continues through the others. If all paths are healthy, I/O is load-balanced across them.

### Linux Support

Native NVMe multipath is built into the Linux kernel's NVMe driver.

```bash
# Confirm it's enabled
$ cat /sys/module/nvme_core/parameters/multipath
```

## BDF
BDF (`Bus:Device.Function`) is the standard way to identify a PCIe device by its location on the bus. BDF is more stable than a name such as `/dev/nvme0n1`.

Example: `0000:5e:00.0`.

- `0000`: PCI domain
- `5e`: bus
- `00`: device
- `0`: function

## Capsule

A *capsule* is a self-contained unit of information exchange for NVMe over Fabrics. There are two kinds:
1. Command capsule: travels from host to controller. At minimum it contains the 64-byte Submission Queue Entry. Optionally it can also carry SGLs describing where data lives, or even the data itself inline.
1. Response capsule: travels from controller to host. At minimum it contains the 16-byte Completion Queue Entry. Same CQE format as PCIe. Optionally it can carry data inline too.

## Resources
- https://www.youtube.com/watch?v=Qy1q4qT7b2M
- NVM Express over Fabrics with SPDK for Intel® Ethernet Products with RDMA (May 2021)
- https://narasimhan-v.github.io/2020/06/12/Managing-NVMe-Namespaces.html
- https://nvmexpress.org/resource/nvme-namespaces/
- "Understanding NVMe Namespaces", https://youtu.be/7MYw-0qfpH8
