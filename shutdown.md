# shutdown

`shutdown` - power-off the machine

See also: [`poweroff`](poweroff.md), [`reboot`](reboot.md), [`halt`](halt.md)

## Basic usage

```bash
# shutdown immediately
$ sudo shutdown -h now

# shutdown machine in one minute
$ shutdown --reboot +1 'Custom message here...'

# shutdown in two minutes
$ shutdown --reboot +2

# Use -c to cancel a pending shutdown
$ shutdown -c
```
