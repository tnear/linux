# lvcreate

`lvcreate` - Create a logical volume (LV)

See also: [volumes](volumes.md), [`lvs`](lvs.md), [`lvdisplay`](lvdisplay.md), [`lvremove`](lvremove.md), [`vgs`](vgs.md)

## Basic usage
```bash
# create 1 GB LV 'my_app' in volume group /dev/vg00
$ sudo lvcreate --yes -L 1G -n my_app vg00
```

Flags:
- `--yes`: answer "yes" to all prompts, intended for automated scripting
- `-L 1G`: create 1 GB logical volume
- `-n my_app`: sets name of LV
- `vg00`: volume group name in which the LV will be created. Use [`vgs`](vgs.md) to list volume groups
