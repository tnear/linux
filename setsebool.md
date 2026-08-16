# setsebool

`setsebool` - set SELinux boolean value

See also: [SELinux](se_linux.md), [`getsebool`](getsebool.md)

## Introduction

SELinux policy includes configurable switches called *booleans*. A boolean represents a supported policy choice. Booleans allow changing certain SELinux behaviors **without modifying or rebuilding the SELinux policy**.

## Example

```bash
# temporarily change a boolean
# note: temp changes to not survive a reboot or policy reload
$ sudo setsebool httpd_can_network_connect on

# persistently (-P) change a bool
$ sudo setsetbool -P httpd_can_network_connect on
```
