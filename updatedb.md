# updatedb

`updatedb` - update a database for mlocate

See also: [`locate`](locate.md)

## Introduction
`updatedb` builds or refreshes the pathname database searched by `locate`.

```bash
$ updatedb
updatedb: can not open a temporary file for '/var/lib/mlocate/mlocate.db'

# root permissions required because it scans directories and files belonging to many users
$ sudo updatedb
```
