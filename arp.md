# arp

`arp` - manipulate the system ARP cache

The `arp` command allows viewing and managing the Address Resolution Protocol (ARP) table. The ARP table maps IP address to physical MAC addresses on a LAN.

`arp` is **deprecated** in favor of [`ip neighbor`](ip.md#neighbor).

## Basic usage

### View ARP table
```bash
# Note: use `ip neighbor` instead.

$ arp
Address          HWtype  HWaddress           Flags Mask  Iface
169.254.0.2      ether   00:00:15:5f:fe:77   C           ens3
_gateway         ether   00:00:15:5f:fe:77   C           ens3
169.254.169.254  ether   00:00:15:5f:fe:77   C           ens3
```

