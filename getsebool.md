# getsebool

`getsebool` - get SELinux boolean value(s)

See also: [SELinux](se_linux.md), [`setsebool`](setsebool.md)

## Introduction

SELinux policy includes configurable switches called *booleans*. A boolean represents a supported policy choice. Booleans allow changing certain SELinux behaviors **without modifying or rebuilding the SELinux policy**.

```bash
# list all booleans
$ getsebool -a | head -n2
abrt_anon_write --> off
abrt_handle_event --> off

# list specific boolean
$ getsebool httpd_can_network_connect
httpd_can_network_connect --> off

# example error message
$ getsebool fake_example
Error getting active value for fake_example
```
