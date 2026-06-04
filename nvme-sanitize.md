# nvme-sanitize

`nvme-sanitize` - Send NVMe Sanitize Command, return result

See also: [`nvme-sanitize-log`](nvme-sanitize-log.md)

## Basic usage

Sanitize is run on a *controller* (ex: `/dev/nvme0`).

```bash
# crypto erase
sudo nvme sanitize /dev/nvme0 --sanact=0x02

# block erase
sudo nvme sanitize /dev/nvme0 --sanact=0x04

# sanitize commands happen asynchronously, so use this
# to monitor Sanitize Operation Status
sudo nvme sanitize-log /dev/nvme0 -H
```
