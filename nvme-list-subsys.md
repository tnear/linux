# nvme list-subsys

`nvme-list-subsys` - List all NVMe subsystems

- `nvme list-subsys` lists all subsystems (ex: nqn).
- To list all controllers, see [`nvme list-ctrl`](nvme-list-ctrl.md).
- To list all namespaces, see [`nvme list`](nvme-list.md).
- Hierarchy: Subsystem -> Controller -> Namespace

## Basic usage
```bash
nvme-subsys1 - NQN=nqn.1994-11.com.samsung:nvme:PM1733:2.5-inch:S5RTNC0TA06272
               hostnqn=nqn.2014-08.org.nvmexpress:uuid:33f8eeea-1355-484b-bc27-daf944ab2db1
               iopolicy=numa
\
 +- nvme1 pcie 0000:00:05.0 live
```
