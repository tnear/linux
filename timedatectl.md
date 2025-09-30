# timedatectl

`timedatectl` - Control the system time and date


## Show current date and time zone
```bash
$ timedatectl
               Local time: Mon 2024-09-30 15:47:14 GMT
           Universal time: Mon 2024-09-30 15:47:14 UTC
                 RTC time: Mon 2024-09-30 15:47:14
                Time zone: GMT (GMT, +0000)
System clock synchronized: yes
              NTP service: active
          RTC in local TZ: no
```

## List time zones
Use the `list-timezones` argument.
```bash
$ timedatectl list-timezones | grep Chicago
88:America/Chicago
```
