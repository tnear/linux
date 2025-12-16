# capsh

`capsh` - capability shell wrapper

`capsh` can display and manipulate capabilities.

## Example usage

```bash
# get current capabilities for a running process
$ cat /proc/$(pidof my_app)/status | grep -i cap

CapInh: 0000000000000000
CapPrm: 000001ffffffffff
CapEff: 000001ffffffffff
CapBnd: 000001ffffffffff
CapAmb: 0000000000000000

# decode CapPrm
$ capsh --decode=000001ffffffffff
0x000001ffffffffff=cap_chown,cap_dac_override,cap_dac_read_search,cap_fowner,...
```
