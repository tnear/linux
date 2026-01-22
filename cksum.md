# cksum

`cksum`, `sum` – display file checksums and block counts

## Basic usage
`cksum` outputs two values: a file's CRC-32 checksum and byte count.
```bash
cksum /etc/passwd
337325332   9050    /etc/passwd
# CRC      # bytes  # file
```
