# SR-IOV

Single Root Input/Output Virtualization (SR-IOV) is a PCI Express (PCIe) specification that allows a single physical device to be shared by multiple virtual machines (VMs). SR-IOV improves performance and manageability by isolating PCI Express resources.

## The problem
A physical NVMe SSD is one device. If you have a server running 20 virtual machines, and each VM needs to talk to that SSD, something has to mediate. The traditional answer is the hypervisor: every I/O from every VM traps into the hypervisor, which forwards it to the real device on the VM's behalf, then returns the result. This is expensive because every single I/O crosses the hypervisor boundary twice.

Ideally, you want each VM to feel like it has its own dedicated NVMe controller (its own queues, register space, and interrupts) so it can submit I/O directly without the hypervisor in the middle.

## How it works
Virtual machines use a *virtual function* to bypass the hypervisor and talk directly to hardware. Data is DMA directly to and from a VM without the hypervisor touching it.

## Physical Function (PF)
A *physical function* is a full-featured PCIe function: the "real" one. It can do everything the device supports: configuration, management, data transfer. It's also the function that controls SR-IOV itself. It tells the hardware "create me 4 virtual functions." The hypervisor (or host OS) owns the physical function.

## Virtual Function (VF)
A *virtual function* is a minimal PCIe function created by the PF. It has its own config space, so a VM can be handed one and talk to it directly as if it were a real device. But its capabilities are intentionally limited. It can do I/O, but it can't reconfigure the device or manage other functions.

The key property is that a VF is a *real PCIe function*, not a software emulation. It has real registers at a real address. A VM with a VF assigned to it via passthrough is directly talking to hardware for better performance.

## Benefits
- Improved performance: SR-IOV allows VMs to have direct hardware access to network resources.
- Lower overhead: SR-IOV has lower overhead than software-based emulation of a network card.
- Run multiple operating systems: SR-IOV allows users to run multiple operating systems on a single piece of hardware without rebooting or changing the operating system.
