# NVMe Controller

A *controller* is the physical hardware component which manages communication between the host system and the actual flash memory. Ex: `/dev/nvme0`. It owns queue pairs.

See also: [`nvme id-ctrl`](nvme-id-ctrl.md)

## Responsibilities for controller
The controller is the command processor. The host puts commands in, and the controller executes them and returns the results.

- Hardware management: each NVMe device has at least one controller which handles command processing, wear leveling, and garbage collection
- Command queues: controllers implement multiple submission and completion queues for parallel command processing
- Identification: each controller has a unique identifier

## Host vs controller
- *host*: the computer asking for data
- *controller*: the manager inside the storage device that fulfills the request

The host says "give me this data." The controller goes and gets it.

Simple example (non-remote): a laptop is a host. The NVMe SSD plugged into it contains a controller.

NVMe-OF example: For two servers connected by a network, the *application server* is the host because it sends NVMe commands. The *storage server* is the controller: it receives those commands, runs them against its drives, and sends back results.

## Controller types
1. I/O controller: most common, accepts read and write commands. Exposes namespaces. Moves data
1. Administrative controller: manages subsystem, has no I/O queues. Creates/deletes namespaces, manages [SR-IOV](sr-iov.md), triggers resets
1. Discovery controller (fabrics-only): tells host which subsystems and namespaces are available

### What is inside a controller
Every controller, regardless of type, has exactly one Admin Queue pair: Admin Submission Queue and Admin Completion Queue.

I/O controllers have one or more I/O queue pairs.

## Queue pair
NVMe uses queue pairs (qpairs) for communication between the host and controller. Each queue pair consists of:
- Submission Queue (SQ): Where the *host* places commands
- Completion Queue (CQ): Where the *nvme controller* places completion queue entries (CQE, aka "results")

### Queue
The queue itself is a ring buffer in memory.

- Submission queue: holds up to 65,535 entries for 64-byte commands
- Completion queue: holds 4096 entries for 16-byte results

### Admin queue pairs
Each NVMe controller has exactly one admin QP, which has an ID of `0`. It handles controller management (does not perform I/O).

Responsibilities:
- controller configuration (setting features, log pages, capability discovery)
- namespace management
- queue management: create and delete I/O qpairs

## Commands
The host sends commands to the controller. The controller executes the command, then writes a CQE with the result.

### Command ordering
The **host** is responsible for command ordering, not the controller.

If, for example, the host requires a read to LBA=100 after a write from LBA=100, the host must wait until it receives a CQE for the write first before it issues a read.

The advantage of this design is that the controller is free to reorder, pipeline, or parallelize any commands.

#### Fused operations
These allow two commands to be treated as an atomic unit. Example: compare and write: compare a block's contents against a buffer, and conditionally write new data.

### How a command travels
1. The *host* writes a command into the next free slot of the Submission Queue
1. Host writes to a *doorbell register*, which is MMIO that tells controller that new entries are available
1. The *controller* fetches commands *in-order* from Submission Queue (but can process them in parallel)
1. When a command completes, the controller writes a CQE into next slot of Completion Queue
1. Host processes the CQE from controller

### I/O queue pairs
I/O queue pairs handle data operations (read, write, flush, etc.). NVMe controllers can support up to 65,535 I/O queue pairs (while admin qpair only has one). Their IDs range from [1, 65535]. Multiple I/O queue pairs enables parallelism.

I/O queue pairs are created by the admin qpair.
