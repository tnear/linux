# ip

`ip` - show / manipulate routing, network devices, interfaces and tunnels

See also: [`ifconfig`](ifconfig.md), [`arp`](arp.md)

## Show current machine's ip address
```bash
$ ip address
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:22:46:4f brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic noprefixroute eth0
       valid_lft 78582sec preferred_lft 78582sec
    inet6 ce80::33ea:7d64:d256:c80d/64 scope link noprefixroute
       valid_lft forever preferred_lft forever
```

## IP routes
```bash
$ ip route
default via 10.0.2.2 dev eth0 proto dhcp src 10.0.2.15 metric 100
10.0.2.0/24 dev eth0 proto kernel scope link src 10.0.2.15 metric 100
172.17.0.0/16 dev docker0 proto kernel scope link src 172.17.0.1 linkdown
```

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
