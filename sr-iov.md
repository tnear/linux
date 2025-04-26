# SR-IOV

Single Root Input/Output Virtualization (SR-IOV) is a PCI Express (PCIe) specification that allows a single physical device to be shared by multiple virtual machines (VMs). SR-IOV improves performance and manageability by isolating PCI Express resources.

## How it works
Virtual machines use a *virtual function* to bypass the hypervisor and talk directly to hardware. Data is DMA directly to and from a VM without the hypervisor touching it.

## Physical Function (PF)
The primary function of the device, which advertises the device's SR-IOV capabilities.

## Virtual Function (VF)
A function that shares resources with the PF, such as a network port or memory.

## Benefits
- Improved performance: SR-IOV allows VMs to have direct hardware access to network resources.
- Lower overhead: SR-IOV has lower overhead than software-based emulation of a network card.
- Run multiple operating systems: SR-IOV allows users to run multiple operating systems on a single piece of hardware without rebooting or changing the operating system.
