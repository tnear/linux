# ethtool

`ethtool` - query or control network driver and hardware settings

## Query network interface by name

```
$ sudo ethtool enp0s3

Settings for enp0s3:
	Supported ports: [ TP ]
	Supported link modes:   10baseT/Half 10baseT/Full 
	                        100baseT/Half 100baseT/Full 
	                        1000baseT/Full 
	Supported pause frame use: No
	Supports auto-negotiation: Yes
	Advertised pause frame use: No
	Advertised auto-negotiation: Yes
	Advertised FEC modes: Not reported
	Speed: 1000Mb/s
	Duplex: Full
	Port: Twisted Pair
	PHYAD: 0
	Transceiver: internal
	Auto-negotiation: on
	MDI-X: off (auto)
	Supports Wake-on: umbg
	Wake-on: d
	Current message level: 0x00000007 (7)
			       drv probe link
	Link detected: yes
```

## View packet statistics
Use the `--statistics` flag to see detailed information about packets.

```
$ sudo ethtool --statistics enp0s3

NIC statistics:
     rx_packets: 353208
     tx_packets: 60115
     rx_bytes: 515998054
     tx_bytes: 3951578
     rx_broadcast: 0
     tx_broadcast: 10
     rx_multicast: 0
     tx_multicast: 126
     rx_errors: 0
     tx_errors: 0
     tx_dropped: 0
     multicast: 0
     <truncated>
```

## Resources
- https://www.baeldung.com/linux/using-ethtool
