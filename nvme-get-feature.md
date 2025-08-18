# nvme get-feature

`nvme-get-feature` - Gets an NVMe feature, returns applicable results

Consult the "Feature Support Requirements" section of the NVMe specification to see what every feature ID means.

## Asynchronous event configuration
Feature ID `0x0b` is asynchronous event configuration. It can be useful for understanding if certain actions send an event.

```bash
$ sudo nvme get-feature --feature-id=0x0b -H /dev/nvme0
get-feature:0x0b (Async Event Configuration), Current value:0x00000200
	Discovery Log Page Change Notices                  : Do not send async event
	Endurance Group Event Aggregate Log Change Notices : Do not send async event
	LBA Status Information Notices                     : Do not send async event
	Predictable Latency Event Aggregate Log Change     : Do not send async event
	Asymmetric Namespace Access Change Notices         : Do not send async event
	Telemetry Log Notices                              : Do not send async event
	Firmware Activation Notices                        : Send async event
	Namespace Attribute Notices                        : Send async event
	SMART / Health Critical Warnings                   : Do not send async event
```
