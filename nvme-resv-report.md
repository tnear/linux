# nvme-resv-report

`nvme-resv-report` - Send NVMe Reservation Report, parse the result

## Basic usage
```bash
# Sample output from nvme resv-report
sudo nvme resv-report /dev/nvme0n1

# Output explanation:
NVME Reservation Report:
Gen Counter  : 42           # Generation counter (increments on changes)
Rtype        : 1            # Reservation type (1 = Write Exclusive)
RegCtl       : 2            # Number of registered controllers
PtplA        : 0            # Persist Through Power Loss Activated

Registered Controllers:
  cntlid  : 0x0023         # Controller ID
  rcsts   : 0x1            # Reservation status (1 = holder)
  hostid  : 0123456789abcdef
  rkey    : 0xAAAA1111     # Registration key

  cntlid  : 0x0024
  rcsts   : 0x0            # Not the reservation holder
  hostid  : fedcba9876543210
  rkey    : 0xBBBB2222
```
