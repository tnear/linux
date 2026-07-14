# ip

`ip` - show / manipulate routing, network devices, interfaces and tunnels

See also: [`ifconfig`](ifconfig.md), [`arp`](arp.md)

## Show current machine's ip address
```bash
$ ip address
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: ens3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state UP group default qlen 1000
    link/ether 02:00:17:0f:7b:09 brd ff:ff:ff:ff:ff:ff
    altname enp0s3
    inet 10.0.3.214/24 brd 10.0.3.255 scope global dynamic noprefixroute ens3
       valid_lft 48374sec preferred_lft 48374sec
    inet6 fe80::17ff:fe0f:7b09/64 scope link noprefixroute
       valid_lft forever preferred_lft forever
```

This shows two interfaces, `lo` (loopback) and `ens3` (Ethernet network interface).

### Loopback
- `mtu 65536`: maximum transmission unit (packet size): 65K
- `link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00`
    - contains dummy MAC address and dummy broadcast address (common for loopback)
- `inet6 ::1/128`: IPv6 equivalent of `127.0.0.1`

### `ens3`
- `mtu 9000`: jumbo frames enabled, max packet size is 9000 bytes (normal is 1500 bytes)
- `link/ether 02:00:17:0f:7b:09`: MAC address of interface (`02` prefix is common for VNICs)
- `inet 10.0.3.214/24`: IPv4 address with `/24` subnet mask

## IP routes
```bash
$ ip route
default via 10.0.2.2 dev eth0 proto dhcp src 10.0.2.15 metric 100
10.0.2.0/24 dev eth0 proto kernel scope link src 10.0.2.15 metric 100
172.17.0.0/16 dev docker0 proto kernel scope link src 172.17.0.1 linkdown
```

### `default`
- `default`: all destinations not otherwise matched
- `via 10.0.2.2`: packets are sent to gateway `10.0.2.2`
- `dev eth0`: traffic leaves via `eth0` network interface

### `10.0.2.0/24`
- `10.0.2.0/24`: covers IPs from `10.0.2.0` to `10.0.2.255`
- `dev eth0`: this subnet is reachable through `eth0`
- `proto kernel`: means kernel created this route automatically

## Show all network devices (NICs)
```bash
$ ip link
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: ens3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state UP mode DEFAULT group default qlen 1000
    link/ether 01:10:1a:88:9d:c8 brd ff:ff:ff:ff:ff:ff
    altname enp0s3
```

## Network namespaces
Network namespaces are used by containers to create an isolated network stack per container. See Networking.git for more information.

```bash
# create a namespace
sudo ip netns add my_ns

# list all namespaces
ip netns list

# delete a namespace
sudo ip netns delete my_ns

# run command inside namespace
sudo ip netns exec my_ns <command>

# get a shell inside namespace
sudo ip netns exec my_ns bash

# run command ("ip link") inside network namespace
$ ip netns exec my_ns ip link
```

## Neighbor
`ip neighbor` is the modern equivalent of [`arp`](arp.md).

```bash
# list all arp entries
$ ip neighbor show
$ arp  # legacy

# show specific entry
$ ip neighbor show 192.168.1.1
$ arp 192.168.1.1  # legacy
```
