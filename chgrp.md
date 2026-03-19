# chgrp

`chgrp` - change group ownership

See also: [`chown`](chown.md)

## Basic usage

```bash
# syntax: chgrp <group> <file>

# change group owner of project.txt to 'developers'
$ chgrp developers project.txt

# recursively change group of directory and all its contents
$ chgrp -R my_grp /var/log/myapp
```
