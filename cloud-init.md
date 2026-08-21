# cloud-init

`cloud-init` - Cloud instance initialization

`cloud-init`, aka "cloud init", "cloud_init", and "cloudinit", runs during early boot and executes modules with different frequencies such as per-boot, per-instance, or once. It runs as the `root` user.

## Log files

### `/var/log/cloud-init.log`
(start here)

This contains internal cloud-init process logs (ex: no user-data).

### `/var/log/cloud-init-output.log`
This files captures the stdout and stderr from user-data scripts.

### `/var/lib/cloud/instance/user-data.txt`
This is the user-data script itself.

### `/var/lib/cloud/instance/boot-finished`
Timestamp file indicating when cloud-init completed.

## Cloud config

Cloud-config is a cloud-init configuration format written in YAML.

```yaml
#cloud-config
# ^^^ "cloud-config" is a required format maker

# packages to install using default package manager
# ex: runs 'dnf install -y grubby nvme-cli'
packages:
    - grubby
    - nvme-cli

# Files to create or replace. This example adds two
# kernel modules to my-module.conf. This path loads
# modules after every boot. This is a new file, so it
# will be created as root:root with 644 permissions.
write_files:
  - path: /etc/modules-load.d/my-module.conf
    owner: root:root
    permissions: "0644"
    content: |
      nvme-fabrics
      nvme-tcp

# Commands to run during this boot. modules-load.d does
# not load modules, so this must be separate.
# The command is listed first and its arguments are comma separated, ex: modprobe nvme_fabrics
runcmd:
  # Load the NVMe/TCP modules during the initial boot.
  - [modprobe, nvme_fabrics]
  - [modprobe, nvme_tcp]

# power_state tells what to do after cloud-init finishes.
# This example tells to reboot once cloud-init is done.
power_state:
  mode: reboot
  delay: now
  message: Rebooting to finalize installation.
```

## Resources
- https://cloud-init.io/
