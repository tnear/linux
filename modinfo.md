# modinfo

`modinfo` - Show information about a Linux Kernel module

## Basic usage

```bash
# list a kernel modules
$ lsmod | tail -n3
battery                28672  0
wmi                    36864  1 video
button                 24576  0

# get more information about a particular kernel module
$ modinfo battery
filename:       /lib/modules/6.1.0-amd64/kernel/drivers/acpi/battery.ko
license:        GPL
description:    ACPI Battery Driver
alias:          acpi*:MSHW0146:*
alias:          acpi*:PNP0C0A:*
depends:
retpoline:      Y
intree:         Y
name:           battery
vermagic:       6.1.0-amd64 SMP preempt mod_unload modversions
parm:           cache_time:cache time in milliseconds (uint)
```
