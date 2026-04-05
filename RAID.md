# RAID

RAID (redundant array of independent disks) stores data in redundant manner across multiple disks.

RAID is used to tolerate disk failures, but should not be used as a substitute for backups.

## Benefits

- Redundancy: Protect against disk failure
- Performance: Faster reads/writes through parallelization
- Capacity: Present multiple disks as one large volume

## RAID levels

RAID levels are distinguished by the amount of redundancy they provide and the minimum number of drives they require.

### RAID 0 (striping)

RAID 0 splits data across disks with *no* redundancy. If one disk fails, all data is lost. RAID 0 improves performance.

### RAID 1 (mirroring)

```
Disk 1: [A][B][C]
Disk 2: [A][B][C]  (exact copy)
```

RAID 1 makes an exact copy and can tolerate one failure. However, only half (1/2) of the storage capacity is used.

### RAID 5 (striping with parity)

```
Disk 1: [A1][B2][Cp]
Disk 2: [A2][Bp][C1]
Disk 3: [Ap][B1][C2]
(p = parity)
```

RAID 5 uses 3 disks and can tolerate one failure by using *parity* bits. It uses 2/3 capacity.

### RAID 6 (striping with double parity)

```
Disk 1: [A1][B2][Cp][Dq]
Disk 2: [A2][Bp][C1][Dq]
Disk 3: [Ap][B1][Cq][D1]
Disk 4: [Aq][Bq][C2][D2]
```

RAID 6 uses more redundancy and can tolerate two failures.

### Other RAID levels

RAID levels such as RAID 2, 3, and 4 are obsolete.

## Set up

RAID can be set up using the `mdadm` command.

```bash
# Create RAID 1 array
sudo mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sdb /dev/sdc

# Check status
cat /proc/mdstat

# Format and mount
sudo mkfs.ext4 /dev/md0
sudo mount /dev/md0 /mnt/raid
```
