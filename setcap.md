# setcap

`setcap` - set file capabilities

Run `man capabilities` for a complete list. Capabilities offer more granular control than `setuid`.

See also: [`getcap`](getcap.md), [SELinux](se_linux.md), [`setuid`](setuid.md)

## Basic usage

```bash
# create a test file
touch /tmp/my_cap.txt

# add a capability. cap_net_bind_service allows
# binding to sockets on ports <1024.
# +: add
# e: effective flag
# p: permitted flag
# "+ep" means to add effective and permitted flags
$ sudo setcap cap_net_bind_service+ep /tmp/my_cap.txt

# get its capabilities
$ getcap /tmp/my_cap.txt
/tmp/my_cap.txt cap_net_bind_service=ep
```

## Common capabilities
- `cap_net_bind_service`: allows binding to sockets on ports less than 1024
- `cap_net_admin`: configuring network interfaces, firewalls, routing tables, network monitoring tools, socket options
- `cap_net_raw`: allows use of RAW and PACKET sockets. Useful for packet sniffers (tcpdump, Wireshark) and [`nmap`](nmap.md).
- `cap_sys_admin`: allows system administrator operations such as mounting filesystems, setting hostname, and filesystem operations
    - **Warning**: this is broad and powerful, essentially "almost root" and should be avoided in favor of more specific capabilities if possible
- `cap_ipc_lock`: Lock memory (`mlock`, `mmap`, shared memory) and allocating huge pages

## Resources
- https://earthly.dev/blog/intro-to-linux-capabilities/
