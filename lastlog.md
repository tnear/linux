# lastlog

`lastlog` - reports the most recent login of all users or of a given user

See also: [`last`](last.md)

`lastlog` displays the contents of the file `/var/log/lastlog`.

## Basic usage

```bash
$ lastlog
Username  Port   From          Latest
root      pts/0  100.94.63.25  Sun Dec  8 21:45:53 2024
bin                            **Never logged in**

# specific user
$ lastlog -u root
```
