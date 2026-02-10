# lvcreate

`lvcreate` - Create a logical volume (LV)

See also: [volumes](volumes.md), [`lvs`](lvs.md), [`lvdisplay`](lvdisplay.md), [`lvremove`](lvremove.md)

## Basic usage
```bash
# create LV /dev/vg00/my_app
$ sudo lvcreate --yes -L 1G -n my_app vg00
```

Flags:
- `--yes`: answer "yes" to all prompts
- `-L 1G`: specify size of logical volume to 1 GB
- `-n my_app`: sets name of LV
- `vg00`: volume group name in which the LV will be created. Use [`vgs`] to list volume groups
