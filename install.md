# install

`install` - copy files and set attributes

See also: [`cp`](cp.md), [`chmod`](chmod.md), [`chown`](chown.md)

## File usage
```bash
# copy file to destination and set permissions
$ install -m 755 script.sh /usr/local/bin/

# copy and set owner (-o) and group (-g)
$ install -m 644 -o my_user -g my_grp config.conf /etc/myapp/
```

## Directory usage
```bash
# create directory (-d) with specified permissions
$ install -d -m 755 /var/log/myapp
```

## When files/directories already exist
If the destination already exists, `install` does nothing. It does *not* create files, update ownership, or update permissions.
