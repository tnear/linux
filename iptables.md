# iptables

`iptables` is a firewall utility on Linux that allows administrators to configure rules for filtering and manipulating network packets. It is the user-space interface to the Linux kernel's *netfilter* framework, which does the actual packet processing.

`iptables` is mostly legacy in favor of the newer `nftables`.

## How it works

Network traffic flows through a series of **tables**, each containing **chains** of rules. When a packet arrives, the kernel walks through the matching chain top-to-bottom until a rule matches, then executes the specified **target** (action).

The `iptables` command must be run as `root`.

Hierarchy: `Tables -> Chains -> Rules -> Target`

### Primary tables

| Table    | Purpose |
|----------|---------|
| `filter` | Packet filtering: allow or drop packets |
| `nat`    | Network Address Translation (routing traffic) |
| `mangle` | Modify packet headers w/o redirecting |

### Chains

*Chains* are collections of rules for packet processing. Chains always belong to a table.

| Chain     | Triggered when... |
|-----------|-------------------|
| `INPUT`   | Packet destined for the local machine |
| `OUTPUT`  | Packet originating from the local machine |
| `FORWARD` | Packet being routed through the machine |

### Common targets (aka actions or policies)

| Target   | Effect |
|----------|--------|
| `ACCEPT` | Let the packet through |
| `DROP`   | Silently discard packet |
| `REJECT` | Discard and send an error back |

## Modern alternatives

While `iptables` is still widely used, Linux has moved toward newer tools:

- `nftables`: The official successor with cleaner syntax and better performance
- `firewalld`: A higher-level daemon that manages `nftables` or `iptables` underneath
- `ufw`: "Uncomplicated Firewall," a simplified frontend
