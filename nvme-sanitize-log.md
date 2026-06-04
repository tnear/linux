# nvme-sanitize-log

`nvme-sanitize-log` - Send NVMe sanitize-log Command, return result

See also: [`nvme-sanitize`](nvme-sanitize.md)

## Basic usage

```bash
$ sudo nvme sanitize-log /dev/nvme0 -H

Sanitize Progress                      (SPROG) :  65535
Sanitize Status                        (SSTAT) :  0x1
  [2:0] : Sanitize Operation Status  : 0x1	Most Recent Sanitize Command Completed Successfully.
  [7:3] : Overwrite Passes Completed : 0
  [8:8] : Global Data Erased         : 0	User data has been written in the NVM subsystem or PMR has been enabled in the NVM subsystem
  [9:9] : Media Verification Canceled: 0	Not canceled

Sanitize Command Dword 10 Information (SCDW10) :  0x4
Estimated Time For Overwrite                   :  4294967295 (No time period reported)
Estimated Time For Block Erase                 :  90
Estimated Time For Crypto Erase                :  13
Estimated Time For Overwrite (No-Deallocate)   :  0
Estimated Time For Block Erase (No-Deallocate) :  0
Estimated Time For Crypto Erase (No-Deallocate):  0
Estimated Time For Post-Verification Deallocation:  0
Sanitize State Information               (SSI) : 0
  [3:0] : Sanitize State : 0	Idle state
```
