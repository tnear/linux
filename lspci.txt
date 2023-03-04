LCPCI

lspci - list all PCI devices
PCI (Peripheral Component Interconnect): a bus for attaching devices in a computer

$ lspci
00:00.0 Host bridge: Intel Corporation Host bridge (rev 01)
00:01.0 PCI bridge: Intel Corporation AGP bridge (rev 01)
00:07.0 ISA bridge: Intel Corporation 82371AB/EB/MB PIIX4 ISA (rev 08)
00:07.1 IDE interface: Intel Corporation 82371AB/EB/MB PIIX4 IDE (rev 01)
00:07.3 Bridge: Intel Corporation 82371AB/EB/MB PIIX4 ACPI (rev 08)
00:07.7 System peripheral: VMware Virtual Machine Communication Interface (rev 10)
00:0f.0 VGA compatible controller: VMware SVGA II Adapter
00:10.0 SCSI storage controller: Broadcom PCI-X Fusion-MPT Ultra320 SCSI (rev 01)
00:11.0 PCI bridge: VMware PCI bridge (rev 02)

# Verbose output:
$ lspci -v
00:0d.0 SATA controller: Intel Corporation 82801HM/HEM (ICH8M/ICH8M-E) SATA Controller [AHCI mode] (prog-if 01 [AHCI 1.0])
        Flags: bus master, fast devsel, latency 64, IRQ 21
        I/O ports at d240 [size=8]
        I/O ports at d248 [size=4]
        I/O ports at d250 [size=8]
        I/O ports at d258 [size=4]
        I/O ports at d260 [size=16]
        Memory at f0806000 (32-bit, non-prefetchable) [size=8K]
        Capabilities: <access denied>
        Kernel driver in use: ahci
        Kernel modules: ahci

---