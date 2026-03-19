# logrotate

`logrotate` ‐ rotates, compresses, and mails system logs

## Complete example

Create a log rotation file in logrotate.d. Ex: `/etc/logrotate.d/myapp`. Assume your application's logs go to `/var/log/myapp.log`.

```bash
/var/log/myapp.log {
    daily         # rotate daily
    rotate 5      # keep 5 rotated log files (myapp.log.1 to 5)
    compress      # compress rotated logs with gzip (myapp.log.1.gz)
    missingok     # don't error if the log file is missing
    notifempty    # don't rotate if the log file is empty
    postrotate    # commands to run after rotation
        systemctl restart myapp
    endscript
}
```

### Other common options
- `copytruncate`: copies current file, rotates it, then *clears* current file. The app still writes to the same file.
- `create`: creates a new file. Many applications register a `SIGHUP` signal to close then re-open their log files

### Manual runs

The script in `logrotate.d` will run automatically based on its configuration. To force a manual run, use `-f`:
```bash
sudo logrotate -f /etc/logrotate.d/myapp
```
