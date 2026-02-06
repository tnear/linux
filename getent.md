# getent

`getent` - get entries from Name Service Switch libraries

See also: [`id`](id.md), [`groups`](groups.md)

## Users
```bash
# list all users
$ getent passwd

# list specific user
$ getent passwd user_name
```

## Groups
```bash
# list all groups
$ getent group

# list specific group
$ getent group group_name
```

## Hosts
```bash
# list all hosts
$ getent hosts
127.0.0.1       localhost
127.0.0.1       localhost
10.200.12.34    my-host.example.com
```

## Networks
```bash
$ getent networks
default          0.0.0.0
loopback         127.0.0.0
link-local       169.254.0.0
```
