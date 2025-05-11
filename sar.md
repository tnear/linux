# sar

`sar` - System Activity Reporter - Collect, report, or save system activity information.

## `-u` to show utilization for all CPU
```bash
# Show CPU stats in steps of two seconds for three sets of data:
$ sar -u 2 3
10:29:02 AM     CPU     %user     %nice   %system   %iowait    %steal     %idle
10:29:04 AM     all      1.40      0.00      0.89      0.13      0.00     97.58
10:29:06 AM     all      1.27      0.00      1.27      0.00      0.00     97.46
10:29:08 AM     all      1.28      0.00      1.53      0.00      0.00     97.19
Average:        all      1.32      0.00      1.23      0.04      0.00     97.41
```

## `-P` = processor number
```bash
# Get info in processor number 3 (use lscpu to see number of processors):
$ sar -P 3 1 1
```
