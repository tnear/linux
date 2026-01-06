# md5sum

`md5sum` - compute and check MD5 message digest

See also: [`sha256sum`](sha256sum.md)

## Basic usage
```bash
$ md5sum /etc/passwd
24a0bda7bd50977af961e050b8b10582  /etc/passwd
```

### Strings
```bash
# Note: echo needs -n to avoid trailing newline
$ echo -n 'my string' | md5sum
2ba81a47c5512d9e23c435c1f29373cb  -

# printf also avoids the trailing newline
$ printf 'my string' | md5sum
2ba81a47c5512d9e23c435c1f29373cb  -
```
