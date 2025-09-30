# hier-bin

`/bin` contains essential binaries. Needed in single user mode and to bring the system up or repair it.

### `/bin/false`
Application that immediately exits and returns FALSE:
```bash
$ /bin/false
$ echo $?  # show non-zero exit status
1
```

### `/bin/true`
Analogous to `/bin/false`, except returns TRUE.
