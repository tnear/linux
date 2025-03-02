# SPDK

The Storage Performance Development Kit (SPDK) provides a set of tools and libraries for writing high performance, scalable, user-mode storage applications.

## Storage networking
Storage networking lets computers store data on devices that aren't directly attached to them. This allows multiple computers to access the same storage. This also allows pooling storage resources instead of each machine having its own storage.

### Traditional storage networking
- Uses kernel drivers and interrupts
- Has multiple data copies
- Context switches between kernel and user space
- Heavy CPU overhead

### SPDK approach to storage networking
- User space drivers. This avoids context switches by bypassing the kernel. This allows direct communication between NVMe devices and user space.
- Polled I/O. Instead of waiting for interrupts, SPDK continuously checks for completed I/O. This results in lower latency.
- Zero-copy data path
    - Data moves directly between network and storage. This avoids the need to copy data to intermediate buffers.
- Supports TCP and RDMA
- Each core runs independently. No locking is necessary.

## TCP vs RDMA

- TCP is widely supported and runs on any operating system
- TCP has higher CPU usage than RDMA because RDMA bypasses the CPU
- TCP requires copies between kernel and user space

## Block device (`bdev`)

A bdev (block device) is an abstraction layer. It provides a unified block storage interface above various storage technologies, including NVMe. Block devices follow SPDK's design (user-space, polled-IO, zero-copy, lockless).

### Architecture
- SPDK bdev layer: a generic block device abstraction that presents a consistent API regardless of the underlying storage type
- NVMe driver: SPDK includes a user-space NVMe driver that bypasses the kernel
- NVMe bdev module: an adapter which connects the generic bdev interface with an actual NVMe device

## Resources
- https://spdk.io/
- https://youtu.be/2symMaslxQ0
- https://youtu.be/IeYYFs9y2IM (similar to 2symMaslxQ0)
