# Boot Process

## BIOS/UEFI
The Basic Input/Output System (BIOS) or Unified Extensible Firmware Interface (UEFI) is the first piece of software executed when a computer is turned on. It first performs a POST (Power On Self Test) which is an integrity check to ensure components such as hard drive, keyboard, RAM are operational. The BIOS/UEFI runs from ROM/flash memory and is independent of the operating system.

The BIOS/UEFI identifies bootable devices and initiates the boot sequence according to the boot order configured in its settings.

## Master Boot Record (MBR) / GUID Partition Table (GPT)
For BIOS systems: The BIOS checks if found devices (such as hard drive, CD drive, etc.) have a master boot record. The MBR is located in the first 512 bytes of the bootable disk.

For UEFI systems: Uses GPT (GUID Partition Table) and looks for an EFI System Partition (ESP) containing bootloader files.

## Bootloader
The bootloader is the program which boots the computer. Common bootloaders include:
- GRUB2 (GRand Unified Bootloader version 2) - Most common on modern Linux systems
- LILO (Linux Loader) - Mostly obsolete

The bootloader's main objectives are to:
- Present boot menu if multiple operating systems exist
- Load the selected kernel into memory
- Load initial ramdisk (initrd/initramfs)

## Kernel Initialization
The kernel is loaded from disk (typically `/boot/vmlinuz-<version>`) into memory and given control of the system. During initialization it:
- Decompresses itself
- Detects CPU type and hardware
- Mounts the root filesystem specified in kernel parameters
- Starts the init process (PID 1)

## Init System (systemd)
systemd becomes the first process (PID 1) and handles:
- Mounting remaining filesystems
- Starting services in correct order
- Setting up networking
- Starting user interface (display manager)
- Managing system state transitions
- Parallel service startup for faster boot times

Configuration for systemd units is typically found in:
- `/etc/systemd/system/`
- `/usr/lib/systemd/system/`

## Resources
- https://youtu.be/sOIOY6Ks0xA
- https://youtu.be/qIEGavnI-B4
