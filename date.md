# date

`date` - print or set the system date and time

## Basic usage
```bash
$ date
Fri Mar 31 05:36:27 PM CDT 2023
```

```bash
# -I, --iso-8601 = Output in <yyyy>-<mm>-<01>
$ date -I
2023-05-01
```

## Add timestamp to file name
```bash
# creates YYYYMMDD_HM format
$ touch "file_$(date +%Y%m%d_%H%M).txt"
$ ls file_*
file_20250716_1452.txt
