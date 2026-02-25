# nvme-id-ctrl

`nvme-id-ctrl` - Send NVMe Identify Controller, return result and structure

## Basic usage
Prints information about a device (controller), such as number of namespaces supported and model number.

```bash
$ sudo nvme id-ctrl /dev/nvme2
mn        : SAMSUNG MZWLJ7T6HALA-00AU3  # model number
nn        : 32  # number of namespaces
```

## `-H`, `--human-readable`
```bash
$ sudo nvme id-ctrl /dev/nvme2 -H

NVME Identify Controller:
vid       : 0x144d
ssvid     : 0x108e
sn        : S5RTNC0T104269  # serial number
mn        : SAMSUNG MZWLJ7T6HALA-00AU3  # model number
fr        : EPK9CR5Q
rab       : 8
ieee      : 002538
cmic      : 0
  [3:3] : 0    ANA not supported
  [2:2] : 0    PCI
  [1:1] : 0    Single Controller
  [0:0] : 0    Single Port

mdts      : 8
cntlid    : 0x41
ver       : 0x10300
rtd3r     : 0xe4e1c0
rtd3e     : 0x989680
oaes      : 0x300
  [31:31] : 0    Discovery Log Change Notice Not Supported
  [27:27] : 0    Zone Descriptor Changed Notices Not Supported
  [15:15] : 0    Normal NSS Shutdown Event Not Supported
  [14:14] : 0    Endurance Group Event Aggregate Log Page Change Notice Not Supported
  [13:13] : 0    LBA Status Information Notices Not Supported
  [12:12] : 0    Predictable Latency Event Aggregate Log Change Notices Not Supported
  [11:11] : 0    Asymmetric Namespace Access Change Notices Not Supported
  [9:9] : 0x1    Firmware Activation Notices Supported
  [8:8] : 0x1    Namespace Attribute Changed Event Supported

ctratt    : 0
  [19:19] : 0    Flexible Data Placement Not Supported
  [15:15] : 0    Extended LBA Formats Not Supported
  [14:14] : 0    Delete NVM Set Not Supported
  [13:13] : 0    Delete Endurance Group Not Supported
  [12:12] : 0    Variable Capacity Management Not Supported
  [11:11] : 0    Fixed Capacity Management Not Supported
  [10:10] : 0    Multi Domain Subsystem Not Supported
  [9:9] : 0    UUID List Not Supported
  [8:8] : 0    SQ Associations Not Supported
  [7:7] : 0    Namespace Granularity Not Supported
  [6:6] : 0    Traffic Based Keep Alive Not Supported
  [5:5] : 0    Predictable Latency Mode Not Supported
  [4:4] : 0    Endurance Groups Not Supported
  [3:3] : 0    Read Recovery Levels Not Supported
  [2:2] : 0    NVM Sets Not Supported
  [1:1] : 0    Non-Operational Power State Permissive Not Supported
  [0:0] : 0    128-bit Host Identifier Not Supported

rrls      : 0
cntrltype : 0
  [7:2] : 0    Reserved
  [1:0] : 0    Controller type not reported
fguid     : 00000000-0000-0000-0000-000000000000
crdt1     : 0
crdt2     : 0
crdt3     : 0
nvmsr     : 1
  [1:1] : 0    NVM subsystem Not part of an Enclosure
  [0:0] : 0x1    NVM subsystem part of a Storage Device

vwci      : 255
  [7:7] : 0x1    VPD Write Cycles Remaining field is valid.
  [6:0] : 0xfe    VPD Write Cycles Remaining

mec       : 3
  [1:1] : 0x1    NVM subsystem contains a Management Endpoint on a PCIe port
  [0:0] : 0x1    NVM subsystem contains a Management Endpoint on an SMBus/I2C port

oacs      : 0x5f
  [10:10] : 0    Lockdown Command and Feature Not Supported
  [9:9] : 0    Get LBA Status Capability Not Supported
  [8:8] : 0    Doorbell Buffer Config Not Supported
  [7:7] : 0    Virtualization Management Not Supported
  [6:6] : 0x1    NVMe-MI Send and Receive Supported
  [5:5] : 0    Directives Not Supported
  [4:4] : 0x1    Device Self-test Supported
  [3:3] : 0x1    NS Management and Attachment Supported
  [2:2] : 0x1    FW Commit and Download Supported
  [1:1] : 0x1    Format NVM Supported
  [0:0] : 0x1    Security Send and Receive Supported

acl       : 127
aerl      : 15
frmw      : 0x17
  [5:5] : 0    Multiple FW or Boot Update Detection Not Supported
  [4:4] : 0x1    Firmware Activate Without Reset Supported
  [3:1] : 0x3    Number of Firmware Slots
  [0:0] : 0x1    Firmware Slot 1 Read-Only

lpa       : 0xe
  [6:6] : 0    Telemetry Log Data Area 4 Not Supported
  [5:5] : 0    LID 0x0, Scope of each command in LID 0x5, 0x12, 0x13 Not Supported
  [4:4] : 0    Persistent Event log Not Supported
  [3:3] : 0x1    Telemetry host/controller initiated log page Supported
  [2:2] : 0x1    Extended data for Get Log Page Supported
  [1:1] : 0x1    Command Effects Log Page Supported
  [0:0] : 0    SMART/Health Log Page per NS Not Supported

elpe      : 255
  [7:0] : 255 (0's based)    Error Log Page Entries (ELPE)

npss      : 0
  [7:0] : 0 (0's based)    Number of Power States Support (NPSS)

avscc     : 0x1
  [0:0] : 0x1    Admin Vendor Specific Commands uses NVMe Format

apsta     : 0
  [0:0] : 0    Autonomous Power State Transitions Not Supported

wctemp    : 345
 [15:0] : 72 °C (345 K)    Warning Composite Temperature Threshold (WCTEMP)

cctemp    : 358
 [15:0] : 85 °C (358 K)    Critical Composite Temperature Threshold (CCTEMP)

mtfa      : 130
hmpre     : 0
hmmin     : 0
tnvmcap   : 7,681,501,126,656
[127:0] : 7,681,501,126,656
    Total NVM Capacity (TNVMCAP)

unvmcap   : 1,084,431,360,000
[127:0] : 1,084,431,360,000
    Unallocated NVM Capacity (UNVMCAP)

rpmbs     : 0
 [31:24]: 0    Access Size
 [23:16]: 0    Total Size
  [5:3] : 0    Authentication Method
  [2:0] : 0    Number of RPMB Units

edstt     : 2
dsto      : 1
fwug      : 255
kas       : 0
hctma     : 0
  [0:0] : 0    Host Controlled Thermal Management Not Supported

mntmt     : 0
 [15:0] : -273 °C (0 K)    Minimum Thermal Management Temperature (MNTMT)

mxtmt     : 0
 [15:0] : -273 °C (0 K)    Maximum Thermal Management Temperature (MXTMT)

sanicap   : 0x3
  [31:30] : 0    Additional media modification after sanitize operation completes successfully is not defined
  [29:29] : 0    No-Deallocate After Sanitize bit in Sanitize command Supported
    [2:2] : 0    Overwrite Sanitize Operation Not Supported
    [1:1] : 0x1    Block Erase Sanitize Operation Supported
    [0:0] : 0x1    Crypto Erase Sanitize Operation Supported

hmminds   : 0
hmmaxd    : 0
nsetidmax : 0
endgidmax : 0
anatt     : 0
anacap    : 0
  [7:7] : 0    Non-zero group ID Not Supported
  [6:6] : 0    Group ID does change
  [4:4] : 0    ANA Change state Not Supported
  [3:3] : 0    ANA Persistent Loss state Not Supported
  [2:2] : 0    ANA Inaccessible state Not Supported
  [1:1] : 0    ANA Non-optimized state Not Supported
  [0:0] : 0    ANA Optimized state Not Supported

anagrpmax : 0
nanagrpid : 0
pels      : 0
domainid  : 0
megcap    : 0
sqes      : 0x66
  [7:4] : 0x6    Max SQ Entry Size (64)
  [3:0] : 0x6    Min SQ Entry Size (64)

cqes      : 0x44
  [7:4] : 0x4    Max CQ Entry Size (16)
  [3:0] : 0x4    Min CQ Entry Size (16)

maxcmd    : 0
nn        : 32  # number of namespaces
oncs      : 0x7f
  [8:8] : 0    Copy Not Supported
  [7:7] : 0    Verify Not Supported
  [6:6] : 0x1    Timestamp Supported
  [5:5] : 0x1    Reservations Supported
  [4:4] : 0x1    Save and Select Supported
  [3:3] : 0x1    Write Zeroes Supported
  [2:2] : 0x1    Data Set Management Supported
  [1:1] : 0x1    Write Uncorrectable Supported
  [0:0] : 0x1    Compare Supported

fuses     : 0
  [0:0] : 0    Fused Compare and Write Not Supported

fna       : 0x4
  [3:3] : 0    Format NVM Broadcast NSID (FFFFFFFFh) Supported
  [2:2] : 0x1    Crypto Erase Supported as part of Secure Erase
  [1:1] : 0    Crypto Erase Applies to Single Namespace(s)
  [0:0] : 0    Format Applies to Single Namespace(s)

vwc       : 0
  [2:1] : 0    Support for the NSID field set to FFFFFFFFh is not indicated
  [0:0] : 0    Volatile Write Cache Not Present

awun      : 65535
awupf     : 0
icsvscc   : 1
  [0:0] : 0x1    NVM Vendor Specific Commands uses NVMe Format

nwpc      : 0
  [2:2] : 0    Permanent Write Protect Not Supported
  [1:1] : 0    Write Protect Until Power Supply Not Supported
  [0:0] : 0    No Write Protect and Write Protect Namespace Not Supported

acwu      : 0
ocfs      : 0
  [1:1] : 0    Controller Copy Format 1h Not Supported
  [0:0] : 0    Controller Copy Format 0h Not Supported

sgls      : 0xf0002
 [21:21]: 0    Transport SGL Data Block Descriptor Not Supported
 [20:20]: 0    Address Offsets Not Supported
 [19:19]: 0x1    Metadata Pointer Containing SGL Descriptor is Supported
 [18:18]: 0x1    SGL Length Larger than Buffer Supported
 [17:17]: 0x1    Byte-Aligned Contig. MD Buffer Supported
 [16:16]: 0x1    SGL Bit-Bucket Supported
 [15:8] : 0    SGL Descriptor Threshold
  [2:2] : 0    Keyed SGL Data Block descriptor Not Supported
  [1:0] : 0x2    Scatter-Gather Lists Supported. Dword alignment required.

mnan      : 0
maxdna    : 0
maxcna    : 0
oaqd      : 0
subnqn    : nqn.1994-11.com.samsung:nvme:PM1733:2.5-inch:S5RTNC0T104269
ioccsz    : 0
iorcsz    : 0
icdoff    : 0
fcatt     : 0
  [0:0] : 0    Dynamic Controller Model

msdbd     : 0
ofcs      : 0
  [0:0] : 0    Disconnect command Not Supported

ps      0 : mp:25.00W operational enlat:0 exlat:0 rrt:0 rrl:0
            rwt:0 rwl:0 idle_power:7.00W active_power:19.00W
            active_power_workload:80K 128KiB SW
```

- `mdts: 8`: Maximum Data Transfer Size. `8` means `2^8 * 4 KB` = 1 MB.
