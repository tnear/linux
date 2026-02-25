# nvme id-ns

`nvme-id-ns` - Send NVMe Identify Namespace, return result and structure

## `-H, --human-readable`
```bash
$ sudo nvme id-ns -H /dev/nvme2n1

NVME Identify Namespace 1:
nsze    : 0x20000000
ncap    : 0x20000000
nuse    : 0x20000000
nsfeat  : 0
  [4:4] : 0    NPWG, NPWA, NPDG, NPDA, and NOWS are Not Supported
  [3:3] : 0    NGUID and EUI64 fields if non-zero, Reused
  [2:2] : 0    Deallocated or Unwritten Logical Block error Not Supported
  [1:1] : 0    Namespace uses AWUN, AWUPF, and ACWU
  [0:0] : 0    Thin Provisioning Not Supported

nlbaf   : 4
flbas   : 0x2
  [6:5] : 0    Most significant 2 bits of Current LBA Format Selected
  [4:4] : 0    Metadata Transferred in Separate Contiguous Buffer
  [3:0] : 0x2    Least significant 4 bits of Current LBA Format Selected

mc      : 0x3
  [1:1] : 0x1    Metadata Pointer Supported
  [0:0] : 0x1    Metadata as Part of Extended Data LBA Supported

dpc     : 0x1f
  [4:4] : 0x1    Protection Information Transferred as Last Bytes of Metadata Supported
  [3:3] : 0x1    Protection Information Transferred as First Bytes of Metadata Supported
  [2:2] : 0x1    Protection Information Type 3 Supported
  [1:1] : 0x1    Protection Information Type 2 Supported
  [0:0] : 0x1    Protection Information Type 1 Supported

dps     : 0
  [3:3] : 0    Protection Information is Transferred as Last Bytes of Metadata
  [2:0] : 0    Protection Information Disabled

nmic    : 0
  [0:0] : 0    Namespace Multipath Not Capable

rescap  : 0xff
  [7:7] : 0x1    Ignore Existing Key - Used as defined in revision 1.3 or later
  [6:6] : 0x1    Exclusive Access - All Registrants Supported
  [5:5] : 0x1    Write Exclusive - All Registrants Supported
  [4:4] : 0x1    Exclusive Access - Registrants Only Supported
  [3:3] : 0x1    Write Exclusive - Registrants Only Supported
  [2:2] : 0x1    Exclusive Access Supported
  [1:1] : 0x1    Write Exclusive Supported
  [0:0] : 0x1    Persist Through Power Loss Supported

fpi     : 0x80
  [7:7] : 0x1    Format Progress Indicator Supported
  [6:0] : 0    Format Progress Indicator (Remaining 0%)

dlfeat  : 1
  [4:4] : 0    Guard Field of Deallocated Logical Blocks is set to 0xFFFF
  [3:3] : 0    Deallocate Bit in the Write Zeroes Command is Not Supported
  [2:0] : 0x1    Bytes Read From a Deallocated Logical Block and its Metadata are 0x00

nawun   : 0
nawupf  : 0
nacwu   : 0
nabsn   : 0
nabo    : 0
nabspf  : 0
noiob   : 0
nvmcap  : 2,199,023,255,552
mssrl   : 0
mcl     : 0
msrc    : 0
nulbaf  : 0
anagrpid: 0
nsattr    : 0
nvmsetid: 0
endgid  : 0
nguid   : 35525430541042690025384300000001
eui64   : 00253891215060b4
LBA Format  0 : Metadata Size: 0   bytes - Data Size: 512 bytes - Relative Performance: 0x1 Better
LBA Format  1 : Metadata Size: 8   bytes - Data Size: 512 bytes - Relative Performance: 0x3 Degraded
LBA Format  2 : Metadata Size: 0   bytes - Data Size: 4096 bytes - Relative Performance: 0 Best (in use)
LBA Format  3 : Metadata Size: 8   bytes - Data Size: 4096 bytes - Relative Performance: 0x2 Good
LBA Format  4 : Metadata Size: 64  bytes - Data Size: 4096 bytes - Relative Performance: 0x3 Degraded

# lbaf without -H:
lbaf  0 : ms:0   lbads:9  rp:0x1
lbaf  1 : ms:8   lbads:9  rp:0x3
lbaf  2 : ms:0   lbads:12 rp:0 (in use)
lbaf  3 : ms:8   lbads:12 rp:0x2
lbaf  4 : ms:64  lbads:12 rp:0x3
```

### Most common fields
- `nsze`: namespace size: total capacity of the namespace in logical blocks
- `lbaf`: (logical block size format) shows which LBA is `in use`
- `nguid`: unique identifier for namespace

### LBA Format (lbaf)
- `ms`: metadata size in bytes
- `lbads`: LBA data size (power of 2). Examples above are either 2^9 or 2^12 LBA size
- `rp`: relative performance (lower is better, 0 is best)

The example above has 4 formats: 0 to 4.
- `lbaf 0`: no metadata (ms:0), 512-byte blocks (2^9=512), good performance (rp:0x1)
- `lbaf 2`: no metadata, 4 KB blocks (2^12=4096), best performance (rp: 0), currently in use
