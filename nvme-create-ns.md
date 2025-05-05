# nvme-create-ns

`nvme-create-ns` - Send NVMe Namespace management command to create namespace, returns results.

## Basic usage
```bash
$ sudo nvme create-ns /dev/nvme0 --nsze=6104741 --ncap=6104741 --flbas=0 -dps=0
create-ns: Success, created nsid:1

$ sudo nvme attach-ns /dev/nvme0 --namespace-id=1 -controllers=0x41
attach-ns: Success, nsid:1
```

- `nsze`: namespace size
- `flbas`: namespace formatted logical block size setting
- `dps`: data protection settings
