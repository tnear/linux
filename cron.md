# cron

`crond` - daemon to execute scheduled commands

Its name comes from *Chronos*, the Greek word for time.

## `crontab`
`cron` actions come from a `crontab` (cron table), which is a configuration file that specifies shell commands to run periodically. This table is typically stored in `/etc/cron.d`.

## Syntax
```
 ┌───── minute (0-59)
 │ ┌───── hour (0-23)
 │ │ ┌───── day of month (1-31)
 │ │ │ ┌───── month (1-12)
 │ │ │ │ ┌───── day of week (0-6) (Sunday=0)
 │ │ │ │ │
30 3 * * * /command/to/execute
```

### Common patterns
```bash
# Every minute:
* * * * * /script.sh

# Every hour at minute 0:
0 * * * * /script.sh

# Every three hours Monday-Friday
0 */3 * * 1-5 /script.sh

# Every day at 2:30 AM:
30 2 * * * /script.sh

# Every Monday at 8:00 AM:
0 8 * * 1 /script.sh

# Every 15 minutes:
*/15 * * * * /script.sh
```

## View and edit `crontab`
- Run `crontab -e` to edit crontab entries.
- Run `crontab -l` to list (view) crontab entries.

## Resources
- https://en.wikipedia.org/wiki/Cron
