# cksum

`cksum` – display file checksums and block counts

See also: [`sum`](sum.md)

## Comparison of `sum` vs `cksum`
| Property | `sum` | `cksum` |
|----------|-------|---------|
| Algorithm | BSD-style checksum | 32-bit CRC |
| Checksum range | 0–65,535 | 0–4,294,967,295 |
| Size field | 1 KiB blocks, rounded up | Exact bytes |
| Accidental corruption detection | Weaker | Stronger |

## Basic usage
`cksum` outputs two values: a file's CRC-32 checksum and byte count.

```bash
$ cksum /etc/passwd
337325332   9050    /etc/passwd
# CRC      # bytes  # file
```
