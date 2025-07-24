# systemd

`systemd, init` - systemd system and service manager

## Step-by-step example creating a `systemd` process (untested)
### Create a service file in `/etc/systemd/system`

```bash
sudo touch /etc/systemd/system/myservice.service
```

### Define service configuration
Example content to add to systemd file.
```ini
[Unit]
Description=My Custom Service
After=network.target
# Dependencies can be added here
# Requires=mysql.service

[Service]
Type=simple
User=myuser
Group=mygroup
WorkingDirectory=/path/to/working/directory
ExecStart=/usr/bin/python3 /path/to/script.py
ExecReload=/bin/kill -HUP $MAINPID
Restart=on-failure
RestartSec=5
StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=myservice
Environment=NODE_ENV=production

# Hardening options (optional but recommended)
ProtectSystem=full
PrivateTmp=true
NoNewPrivileges=true

[Install]
WantedBy=multi-user.target
```

### Set proper file permissions
```bash
sudo chmod 644 /etc/systemd/system/myservice.service
```

### Reload systemd configuration
After creating or modifying the service file, reload the systemd manager configuration:

```bash
sudo systemctl daemon-reload
```

### Enable and start the service

```bash
# set service to start on boot
sudo systemctl enable myservice.service

# start service
sudo systemctl start myservice.service
```

### Verify service status

```bash
sudo systemctl status myservice.service
```

## Common service management commands

```bash
# stop the service
sudo systemctl stop myservice.service

# restart the service
sudo systemctl restart myservice.service

# check service logs
sudo journalctl -u myservice.service

# view service logs in real-time
sudo journalctl -u myservice.service -f
```
