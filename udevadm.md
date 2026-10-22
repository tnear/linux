# udevadm

`udevadm` - udev management tool

## `udev` introduction

`udev` is the Linux component that reacts when hardware is added or removed. When a device is plugged in, the kernel sends an event, and `udev` (the `systemd-udevd` daemon) responds by:

- creating the device file in `/dev` (like `/dev/sdb1`)
- setting permissions and ownership
- optionally running actions, according to *rules files* in `/etc/udev/rules.d/` (user-defined) and `/usr/lib/udev/rules.d/` (distribution defaults)

## `udevadm` introduction

| Command | Purpose |
|---|---|
| `udevadm monitor` | Watch device events live |
| `udevadm info --name=/dev/sda` | Show info about a device |
| `udevadm control --reload-rules` | Reload rules after editing |
| `udevadm trigger` | Re-apply rules to devices already plugged in |

### Typical workflow

```bash
udevadm monitor                      # 1. watch events, plug in the device
udevadm info --name=/dev/ttyUSB0     # 2. find identifying attributes
# 3. write a rule in /etc/udev/rules.d/99-mine.rules
sudo udevadm control --reload-rules  # 4. reload rules
sudo udevadm trigger                 # 5. apply to existing devices
```
