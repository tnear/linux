# nvme list-ctrl

`nvme-list-ctrl` - Send NVMe Identify List Controllers, return result and structure

- Hierarchy: Subsystem -> Controller -> Namespace
- To list all subsystems, see [`nvme list-subsys`](nvme-list-subsys.md).
- To list all namespaces, see [`nvme list`](nvme-list.md).

Syntax: `nvme list-ctrl <device>`

## Basic usage
```bash
# these two examples show the same output because they belong to the same subsystem
sudo nvme list-ctrl /dev/nvme1
num of ctrls present: 2
[   0]:0x41
[   1]:0x42

sudo nvme list-ctrl /dev/nvme2
num of ctrls present: 2
[   0]:0x41
[   1]:0x42
```

To verify they belong to the same subsystem, use [`nvme list-subsys`](nvme-list-subsys.md):
```bash
# note that subsys1 and subsys2 have the same nqn
nvme-subsys1 - NQN=nqn.1994-11.com.samsung:nvme:PM1733:2.5-inch:S5RTNC0TA06272
               hostnqn=nqn.2014-08.org.nvmexpress:uuid:33f8eeea-1355-484b-bc27-daf944ab2db1

nvme-subsys2 - NQN=nqn.1994-11.com.samsung:nvme:PM1733:2.5-inch:S5RTNC0TA06754
               hostnqn=nqn.2014-08.org.nvmexpress:uuid:33f8eeea-1355-484b-bc27-daf944ab2db1
```
