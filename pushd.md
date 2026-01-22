# pushd

`pushd` - push directory onto directory stack

See also: [`dirs`](dirs.md), [`popd`](popd.md)

## Basic workflow
```bash
# push pwd onto stack
[/var] $ pushd .
/var

# Next, navigate away:
$ cd /etc

# Then return to old pwd (/var):
[/etc] $ popd
[/var] $
```

## Push cwd onto stack and navigate elsewhere in one step
```bash
# push cwd (home) onto stack and navigate to /var/www
[~] $ pushd /var/www
[/var/www] $ popd
[~] $
```

## View directory stack
```bash
$ pushd /lib
$ pushd /var
$ pushd /etc

# -v = vertical view of stack:
$ dirs -v
0       /etc
1       /var
2       /lib
3       ~
```
