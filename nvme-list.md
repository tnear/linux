# nvme-list

`nvme-list` - List all recognized NVMe devices (ex: namespaces)

- `nvme list` lists all namespaces (ex: `/dev/nvme2n1`).
- To list all subsystems, see [`nvme list-subsys`](nvme-list-subsys.md).
- To list all controllers, see [`nvme list-ctrl`](nvme-list-ctrl.md).
- Hierarchy: Subsystem -> Controller -> Namespace

## Basic usage
```bash
sudo nvme list
Node          Generic     Namespace  Usage    Format
------------- ----------- ---------- -------- -------
/dev/nvme2n1  /dev/ng2n1  0x1        2.20 TB  4 KiB
```
