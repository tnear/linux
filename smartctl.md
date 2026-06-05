# smartctl

`smartctl` - Control and Monitor Utility for SMART Disks

S.M.A.R.T. means Self-Monitoring, Analysis and Reporting Technology.

### Basic usage

Use `-a, --all` to print all SMART information about a disk.

```bash
$ sudo smartctl -a /dev/nvme0
=== START OF INFORMATION SECTION ===
Model Number:                       INTEL SSDXXX
Serial Number:                      YYY
Firmware Version:                   ZZZ
PCI Vendor ID:                      0x8086
PCI Vendor Subsystem ID:            0x108e
IEEE OUI Identifier:                0xc8d6b7
Total NVM Capacity:                 7,681,501,126,656 [7.68 TB]
Unallocated NVM Capacity:           877,247,070,208 [877 GB]
Controller ID:                      0
NVMe Version:                       1.4
Number of Namespaces:               128
Local Time is:                      Fri Jun  5 22:07:14 2026 UTC
Firmware Updates (0x18):            4 Slots, no Reset required
Optional Admin Commands (0x001f):   Security Format Frmw_DL NS_Mngmt Self_Test
Optional NVM Commands (0x005e):     Wr_Unc DS_Mngmt Wr_Zero Sav/Sel_Feat Timestmp
Log Page Attributes (0x3e):         Cmd_Eff_Lg Ext_Get_Lg Telmtry_Lg Pers_Ev_Lg *Other*
Maximum Data Transfer Size:         32 Pages
Warning  Comp. Temp. Threshold:     70 Celsius
Critical Comp. Temp. Threshold:     80 Celsius

Supported Power States
St Op     Max   Active     Idle   RL RT WL WT  Ent_Lat  Ex_Lat
 0 +    25.00W   25.00W       -    0  0  0  0    60000   60000
 1 +    15.00W   15.00W       -    0  0  0  0    60000   60000
 2 +    11.00W   11.00W       -    0  0  0  0    60000   60000

=== START OF SMART DATA SECTION ===
SMART overall-health self-assessment test result: PASSED

SMART/Health Information (NVMe Log 0x02)
Critical Warning:                   0x00
Temperature:                        28 Celsius
Available Spare:                    100%
Available Spare Threshold:          10%
Percentage Used:                    0%
Data Units Read:                    58,862,778 [30.1 TB]
Data Units Written:                 100,804,161 [51.6 TB]
Host Read Commands:                 566,479,486
Host Write Commands:                540,208,472
Controller Busy Time:               873
Power Cycles:                       203
Power On Hours:                     12,934
Unsafe Shutdowns:                   177
Media and Data Integrity Errors:    0
Error Information Log Entries:      0
Warning  Comp. Temperature Time:    0
Critical Comp. Temperature Time:    0

Error Information (NVMe Log 0x01, 16 of 256 entries)
No Errors Logged
```
