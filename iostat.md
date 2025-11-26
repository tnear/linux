# iostat

`iostat` - Report CPU and input/output statistics for devices and partitions.

## Print I/O statistics
```bash
$ iostat
Linux 6.1.0-kali7-amd64 (kali)  03/31/2023      _x86_64_        (4 CPU)

avg-cpu:  %user   %nice %system %iowait  %steal   %idle
           1.71    0.00    1.28    0.39    0.00   96.62

Device    tps    kB_read/s    kB_wrtn/s    kB_dscd/s    kB_read    kB_wrtn    kB_dscd
sda      4.29        91.72        18.15         0.00     974089     192706          0
```

- tps: transactions per second
- wrtn: written

## Display extended statistics
Use `-x` to show more columns.
```bash
$ iostat -x

avg-cpu:  %user   %nice %system %iowait  %steal   %idle
           1.70    0.00    1.27    0.39    0.00   96.65

Device       r/s     rkB/s   rrqm/s  %rrqm r_await rareq-sz    w/s    wkB/s   wrqm/s  %wrqm  w_await
sda         2.79     90.39     1.75  38.56    7.19    32.43   1.46    18.16     2.41  62.27     4.86

Device    wareq-sz     d/s     dkB/s   drqm/s  %drqm d_await dareq-sz     f/s f_await  aqu-sz  %util
sda          12.43    0.00      0.00     0.00   0.00    0.00     0.00    0.30   14.34    0.03   1.51
```
