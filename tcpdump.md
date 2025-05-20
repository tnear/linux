# tcpdump

`tcpdump` - dump traffic on a network

`tcpdump` requires `root` permissions to capture packets.

## Basic usage

```bash
sudo tcpdump -i eth0 -nn -s0 -v port 80
```

- `-i`: select interface to capture. This will typically be an ethernet card or wireless adapter.
- `-nn`: disable resolving hostnames and ports
- `-s0`: size of packet to capture. `-s0` sets the size to unlimited.
- `-v`: verbose

## `-D, --list-interfaces`
```bash
sudo tcpdump --list-interfaces

1.eth0 [Up, Running, Connected]
2.any (Pseudo-device that captures on all interfaces) [Up, Running]
3.lo [Up, Running, Loopback]
4.bluetooth-monitor (Bluetooth Linux Monitor) [Wireless]
5.usbmon1 (Raw USB traffic, bus number 1)
6.usbmon0 (Raw USB traffic, all USB buses) [none]
7.nflog (Linux netfilter log (NFLOG) interface) [none]
8.nfqueue (Linux netfilter queue (NFQUEUE) interface) [none]
9.mlx5_0 (RDMA sniffer)
```

## Capture on IP address

```bash
# capture packets in both directions
sudo tcpdump -i eth0 host 10.10.1.1

# capture packets going to source (src)
sudo tcpdump -i eth0 src 10.10.1.1

# capture packets going to destination (dst)
sudo tcpdump -i eth0 dst 10.10.1.1
```

## Write (`-w`) to capture file

```bash
# Capture interface 'eth0' with unlimited packet size (-s0)
# and write to file test.pcap.
# These are binary files which can be opened in Wireshark
sudo tcpdump -i eth0 -s0 -w test.pcap
```

## Resources
- https://hackertarget.com/tcpdump-examples/
