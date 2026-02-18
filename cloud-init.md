# cloud-init

aka "cloud init", "cloud_init", and "cloudinit".

`cloud-init`, aka "cloud init", "cloud_init", and "cloudinit", runs one time when an instance is provisioned. It runs as the `root` user.

## Log files
### `/var/log/cloud-init.log`
This contains internal cloud-init process logs (ex: no user-data).

### `/var/log/cloud-init-output.log`
This files captures the stdout and stderr from user-data scripts.

### `/var/lib/cloud/instance/user-data.txt`
This is the user-data script itself.

### `/var/lib/cloud/instance/boot-finished`
Timestamp file indicating when cloud-init completed.
