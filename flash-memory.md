# Flash Memory

Flash memory is an electronic, non-volatile computer memory storage medium that can be electrically erased and reprogrammed. Flash memory retains data without power.

See also: [NVMe](nvme.md)

## NAND vs NOR flash
The two main types of flash memory are NOR flash and NAND flash. This file primarily focuses on NAND flash.

| Attribute | NOR Flash | NAND Flash |
|-----------|-----------|------------|
| Use-case | Firmware, embedded | SSDs, USB drives |
| Read speed (random) | Very fast (byte-level) | Slower (page-level) |
| Read speed (sequential) | Moderate | Very fast |
| Write speed | Slow | Fast |
| Erase speed | Very slow (seconds per block) | Fast (ms per block) |
| Cost | Higher | Lower |
| Durability | Higher | Lower (needs wear-leveling) |

### NAND manufacturers
The major NAND flash memory manufacturers are Samsung, Intel, Micron, SK Hynix, and Western Digital.

## Architecture
```text
┌─────────────────────────────────────────┐
│                HOST (CPU)               │
└─────────────────┬───────────────────────┘
                  │ PCIe / SATA / SAS
┌─────────────────▼───────────────────────┐
│              SSD CONTROLLER             │
│                                         │
│  ┌──────────┐        ┌────────────────┐ │
│  │   HIL    │◄──────►│  CPU (FTL      │ │
│  │          │        │   Firmware)    │ │
│  └──────────┘        └────────────────┘ │
│                                         │
│  ┌──────────┐        ┌────────────────┐ │
│  │   DRAM   │        │  ECC Engine    │ │
│  │ (L2P     │        │                │ │
│  │  Cache)  │        │                │ │
│  └──────────┘        └────────────────┘ │
│                                         │
└─────────────────┬───────────────────────┘
                  │ Channels
┌─────────────────▼───────────────────────┐
│              NAND FLASH                 │
└─────────────────────────────────────────┘
```

### Flash storage hierarchy

Flash memory contains multiple levels of hierarchy to allow more parallelism.

- Cell: a single floating gate that stores 1-4 bits. Fundamental unit of storage in SSDs
- String: multiple flash cells (typically 128) serially connected on a bitline (BL)
- Page: a row of cells, typically 16 KB. Smallest unit that you can read/write
- Block: a group of pages, typically 4-8 MB. Smallest unit that can be erased
- Plane: a collection of blocks that share the same read/write circuitry
- Die: a single piece of silicon, typically containing 2-4 planes
- Package: the physical chip on the PCB, contains multiple stacked dies
- Channel: the bus connecting the controller to a set of packages

### Cells

Cells are specialized transistors which trap electrons. There are multiple cell levels. Each generation stores more bits per cell by using more voltage levels.

SLC: single-level cell, MLC: multi-level cell, TLC: triple-level cell, QLC: quad-level cell.

*Note: P/E is program/erase, see Erase section for more info.*

| Type | Bits/cell | Endurance (P/E cycles) | Speed | Cost |
|------|-----------|------------------------|-------|------|
| SLC | 1 | ~100,000     | Fastest  | Highest |
| MLC | 2 | ~10,000      | Fast     | High    |
| TLC | 3 | ~1,000–3,000 | Moderate | Low     |
| QLC | 4 | ~100–1,000   | Slowest  | Lowest  |

Most consumer SSDs today use TLC. Enterprise drives may use MLC or SLC for additional durability.

#### Cell technologies
There are two primary cell technologies:
- Floating gate (2D): older, uncommon now
- Charge trap (3D): newer technology

### Host interface layer
The *host interface layer* (HIL) acts as the bridge between a computer's processor (host) and the drive's internal flash controller. It receives commands (from protocols such as NVMe, SATA, etc.), parses them, then forwards them to FTL. Once FTL finishes, the HIL packages the response and returns it to the host.

### DRAM (L2P cache)
DRAM holds the following:
- L2P (logical-to-physical) mapping table in fast memory so the controller can quickly look up where any LBA lives
- Write buffer (to reduce write latency. Writes are slower than reads for SSDs)
- Metadata such as P/E cycles
- Capacitors to flush DRAM to flash in case of power loss

#### Power loss
DRAM is *volatile*, meaning data is lost during power loss. Enterprise drives with power loss protection (PLP) contain capacitors that provide enough energy after power is cut to flush from DRAM to NAND.

- Clean shutdown: controller flushes mapping table from DRAM to NAND before powering off. On next power-up, it reloads from NAND.
- Sudden power loss: flush never happens, and the controller must scan NAND looking for log entries and metadata to reconstruct mappings.

## Overwriting

### Traditional hard drives
Overwriting is trivial on traditional hard drives: the write head moves to the right spot and writes new magnetic data over old data. RAM works similarly: flip the bits and overwrite is done.

### NAND overwriting
A NAND cell stores data by trapping electrons in a floating gate (or charge trap). This causes *writing* and *erasing* to be fundamentally different:

- Formatting (aka writing): injects electrons into the gate. Electrons are easy to add, but *cannot* be removed selectively.
- Erasing: applies a large reverse voltage to *expel* electrons. This resets cells back to their default state (all `1`s, by NAND convention).

Erasing can only happen at the *block* level, which is typically 4-8 MB. Erasing cannot happen at *page* level (which are much smaller than blocks).

#### How data is "updated"
1. Host sends a write command to logical block address (LBA) `X`
1. The controller cannot touch location `X` if those cells are not empty
1. Instead, the controller writes to a fresh page in a *different* block
1. Controller updates its internal map, Flash Translation Layer (FTL), so LBA `X` now points to the new page
1. The old page is marked *stale*: it does not contain useful data, but cannot be freed until its entire block is erased

After enough writing, blocks contain a mix of *valid pages* and *stale pages* which require *garbage collection*.

## Flash translation layer
The *flash translation layer* (FTL) is the firmware layer inside the SSD controller that makes NAND flash look like a normal, overwritable block device to the host. FTL is the reason SSDs can be a drop-in replacement for hard drives despite NAND's fundamentally different behavior because it abstracts away details from the OS such as erase blocks and wear leveling.

### Roles
- Mapping table: stores every logical address (known to host) to physical address (on SSD)
- Status table: stores which blocks have free and invalid data. Used decide victim blocks to erase

It also runs garbage collection and wear leveling in the background to keep the drive healthy and performant.

## Erasing
There are many ways to erase data from NAND flash memory.

- Standard format (very fast): throws out filesystem metadata. Does not touch NAND cells. No wear on drives. Not secure: old data is still present.
- `TRIM` command: when you delete a file, the OS sends a `TRIM` command in inform the drive that those LBAs are no longer in use. The FTL then marks them as stale so that the garbage collector can reclaim the space.
- Secure erase (fast): every block is bulk-erased to destroy existing data. Incurs some wear (but not as much as erasing each block individually)
- Sanitize crypto erase (very fast): discards internal encryption key. No NAND touched, no wear. Requires self-encrypting drives (SED)
- Sanitize block erase (slow): stronger than secure erase, erases everything: mapped storage, over-provisioned space, reserved blocks. Causes significant wear to drive.

## Garbage collection
Garbage collection (GC) exists because of the overwrite problem: stale pages accumulate in blocks alongside valid pages, and those blocks cannot be erased until every valid page has been moved out.

The FTL periodically selects a block containing mostly stale pages, writes them to a free location elsewhere, then erases the block. The erased block rejoins the pool of free space.

Controllers GC proactively in the background during idle time, keeping a supply of pre-erased blocks ready to absorb incoming writes at any moment.

Garbage collection leads to *write amplification*

### Write amplification
*Write amplification* is the process when valid pages that were not touched by the host get rewritten anyway as collateral of the garbage collection process. This burns endurance and consumes bandwidth the host could otherwise use.

Write amplification can be minimized by keeping the drive from filling up completely so that the FTL has more candidate blocks to choose from.

## Over provisioning
Over-provisioning is capacity that's reserved for the controller and never exposed to the host: the OS can't see it or fill it. This hidden pool gives the FTL a supply of pre-erased blocks ready to absorb writes immediately, so garbage collection can run proactively in the background rather than stalling the host.

- Consumer drives: reserve around 7%
- Enterprise drives: reserve 25–28% to allow sustained performance under heavy workloads

## Wear leveling
NAND cells wear out after a finite number of Program/Erase (P/E) cycles, so without intervention, heavily written blocks would die early while blocks storing rarely-changed data sit nearly untouched.

The FTL tracks each block's erase count and spreads writes evenly. The goal is for every block to reach its wear limit at the same time, maximizing the usable life of the drive.

### Wear limit
Each Program (write) / Erase cycle forces high voltage through the cell's insulating oxide layer to inject or expel electrons. Over thousands of cycles, this physically degrades the oxide. It develops tiny defects that allow electrons to leak through or become trapped. Eventually, the cell can no longer be trusted to distinguish between voltage levels reliably.

When the controller detects a degraded block (through error correcting codes), it retires it by adding it to a "bad block table" and never maps data there again. This happens transparently to the host.

## TODO
- SLC Cache / Write Buffer
- Transistors
- Floating gate
- Charge trap: for TLC, can be 8 levels of electrons trapped
- MOSFET
- 3D flash vs 2D flash

## Resources
- https://en.wikipedia.org/wiki/Flash_memory
- "Reading from TLC : Triple Level Cells", https://youtu.be/YtBysgPOKx4
- "The Flash Translation Layer", https://youtu.be/o68T7c82foA
- "How does Flash Memory work?", https://youtu.be/r2KaVfSH884
- "Basics of NAND Flash-Based SSDs", https://youtu.be/hqLrd-Uj0aU
