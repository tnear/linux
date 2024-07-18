# journalctl

`journalctl` - Query the systemd journal

The `systemd` journal centralizes the management of logs which can originate from many different locations (ex: kernel, initrd, services, etc.).

The journal is stored in a *binary* format.

The `journalctl` command allows seeing the logs which have been collected by the `journald` daemon process.

## List every journal entry
The oldest entries appear at the top. Page through to see others.

```
$ journalctl

-- Logs begin at Tue 2024-07-02 21:06:50 GMT, end at Thu 2024-07-18 14:05:01 GMT. --
Jul 02 21:06:50 localhost kernel: Linux version 5.15.el8uek.x86_64 (mockbuild@host-0-0-255-5)>
Jul 02 21:06:50 localhost kernel: Command line: BOOT_IMAGE=(hd0,gpt2)/vmlinuz-5.15.0-206.153.7.el8uek.x86_64 >
Jul 02 21:06:50 localhost kernel: BIOS-provided physical RAM map:
<truncated>
```

## Get between two times
Use `--since` to start the stop time and use `--until` to set the stop time. The command understands relative dates.

```
$ journalctl --since "2024-07-10" --until "2024-07-18 03:00"
$ journalctl --since yesterday
$ journalctl --since 09:00 --until "1 hour ago"
```

## Filter by process and user ID
```
$ journalctl _PID=8088
$ journalctl _UID=33 --since today
```

## Resources
- https://www.digitalocean.com/community/tutorials/how-to-use-journalctl-to-view-and-manipulate-systemd-logs
