# nvme-resv-register

`nvme-resv-register` - Register an nvme reservation

See also: [`nvme-resv`](nvme-resv.md)

## Basic usage

```bash
# 1. Register a host with the namespace
sudo nvme resv-register /dev/nvme0n1 \
    --crkey=0 \
    --nrkey=0x1234 \
    --rrega=0 \  # 0 = Register action
    --cptpl=3  # enable ptpl

# 2. Acquire a reservation
sudo nvme resv-acquire /dev/nvme0n1 \
    --crkey=0x1234 \
    --rtype=1 \    # Write Exclusive
    --racqa=0      # Acquire action

# 3. Check reservation status
sudo nvme resv-report /dev/nvme0n1

# 4. Release reservation
sudo nvme resv-release /dev/nvme0n1 \
    --crkey=0x1234 \
    --rtype=1 \
    --rrela=0      # Release action

# 5. Unregister
sudo nvme resv-register /dev/nvme0n1 \
    --crkey=0x1234 \
    --rrega=1      # 1 = Unregister action
```
