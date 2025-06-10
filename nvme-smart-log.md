# nvme-smart-log

`nvme-smart-log` - Send NVMe SMART log page request, returns result and log

## Basic usage
`smart-log` lists health stats about an NVMe controller.

```bash
$ sudo nvme smart-log /dev/nvme2
Smart Log for NVME device:nvme2 namespace-id:ffffffff
critical_warning                   : 0
temperature                        : 36 °C (309 K)
available_spare                    : 100%
available_spare_threshold          : 10%
percentage_used                    : 0%
endurance group critical warning summary: 0
Data Units Read                    : 19350116 (9.91 TB)
Data Units Written                 : 94369299 (48.32 TB)
host_read_commands                 : 74303191
host_write_commands                : 314016322
controller_busy_time               : 58
power_cycles                       : 67
power_on_hours                     : 26972
unsafe_shutdowns                   : 41
media_errors                       : 0
num_err_log_entries                : 2
Warning Temperature Time           : 0
Critical Composite Temperature Time : 0
Temperature Sensor 1               : 36 °C (309 K)
Thermal Management T1 Trans Count  : 0
Thermal Management T1 Total Time   : 0
```
