# systemctl

`systemctl` - Control the systemd system and service manager

## Basic usage
```bash
# start service 'my_app'
$ systemctl start my_app

# configure service to start automatically at boot
$ systemctl enable my_app
```

## `firewalld`
```bash
# Check if firewalld is running
$ sudo systemctl status firewalld

firewalld.service - firewalld - dynamic firewall daemon
    Loaded: loaded (/usr/lib/systemd/system/firewalld.service; enabled; preset: enabled)
    Active: active (running) since Mon 2025-07-28 22:33:29 UTC; 16h ago
```
