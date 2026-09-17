# dmesg

`dmesg` - diagnostic messages - print or control the kernel ring buffer

See also: [`journalctl`](journalctl.md)

## Introduction
`dmesg` is often used to diagnose the following issues:

- Hardware detection: disks, NVMe devices, NICs, USB devices, CPUs
- Driver issues: load failures, resets, firmware problems
- Storage errors: I/O errors, NVMe timeouts, filesystem-related kernel messages
- Network problems: link up/down, driver resets
- Boot diagnostics: what the kernel detected during startup
- Kernel warnings/errors: OOM kills, crashes, PCIe errors, etc.

## Print 'boot' related kernel diagnostic messages
```bash
$ dmesg | grep boot
[    0.000000] Command line: BOOT_IMAGE=/boot/vmlinuz-6.0.0-amd64 root=UUID=<uuid> ro quiet splash
[    0.093344] smpboot: Allowing 4 CPUs, 0 hotplug CPUs
```

## Show available segments of memory
This information is contained at the top of `dmesg` output, so output through a pager such as `less`.

```bash
$ dmesg | less
[    0.000000] BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009fbff] usable
[    0.000000] BIOS-e820: [mem 0x000000000009fc00-0x000000000009ffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000000f0000-0x00000000000fffff] reserved
```

## `-T, --ctime`
Print human-readable timestamps.

```bash
$ dmesg -T | tail
[Sat May  3 11:17:51 2025] WSL (338) ERROR: CheckConnection: getaddrinfo() failed: -5
[Sat May  3 11:18:33 2025] hv_balloon: Max. dynamic memory size: 16192 MB
[Sat May  3 11:27:45 2025] mini_init (331): drop_caches: 1
```
