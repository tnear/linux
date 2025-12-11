# setcap

`setcap` - set file capabilities

Run `man capabilities` for a complete list.

See also: [`getcap`](getcap.md), [SELinux](se_linux.md)

## Basic usage

```bash
# create a test file
touch /tmp/my_cap.txt

# add a capability. cap_net_bind_service allows
# binding to sockets on ports <1024
$ sudo setcap cap_net_bind_service+ep /tmp/my_cap.txt

# get its capabilities
$ sudo getcap /tmp/my_cap.txt
/tmp/my_cap.txt cap_net_bind_service=ep

```

## Resources
- https://earthly.dev/blog/intro-to-linux-capabilities/
