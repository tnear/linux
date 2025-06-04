# Wireshark

Wireshark is used for network troubleshooting, analysis, software and communications protocol development

## Tips
- Values in `[brackets]` in property pane are not part of the TCP data. They are from Wireshark to explain the contents in a more human-readable format.
- `Stream index` is a useful filter to monitor one stream consisting of source/destination IP address and source/destination port. Ex: `(srcIp=192.168.0.1, srcPort=54846, destIp=12.345.678.90, destPort=80)`.
- `[Calculated window size]` includes the window size * scaling factor. The scaling factor is determined in the handshaking.

## Filtering
- `info` column:
    - Exact compare: `_ws.col.info == "<string>"`
    - Regex: `_ws.col.info matches "<regex pattern>"`

## Resources
- https://en.wikipedia.org/wiki/Wireshark
- "TCP Fundamentals Part 1 // TCP/IP Explained with Wireshark", https://youtu.be/xdQ9sgpkrX8
