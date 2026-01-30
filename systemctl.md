# systemctl

`systemctl` - Control the systemd system and service manager

## Querying services
```bash
# list all systemd services (--no-pager is optional)
systemctl list-units --type=service --no-pager

# view status of specific service
systemctl status <service_name>

# view systemd file
systemctl cat <service_name>
```

## Starting service
```bash
# start service 'my_app'
$ systemctl start my_app

# configure service to start automatically at boot
$ systemctl enable my_app
```

### Example `status` output
```bash
# Check if firewalld is running
$ sudo systemctl status firewalld

firewalld.service - firewalld - dynamic firewall daemon
    Loaded: loaded (/usr/lib/systemd/system/firewalld.service; enabled; preset: enabled)
    Active: active (running) since Mon 2025-07-28 22:33:29 UTC; 16h ago
```
