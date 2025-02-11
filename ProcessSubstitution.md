# Process Substitution

In computing, process substitution is a form of inter-process communication that allows the input or output of a command to appear as a file.

Syntax: `<(...command...)`

## File creation
Process substitution creates temporary files which are automatically thrown away.

```bash
# 'echo hey there' creates a temporary file with the contents 'hey there'
# cat then echoes the file
cat <(echo hey there)

# this uses echo to output the file name:
# for example, this may output /dev/fd/63
echo <(echo hey there)
```

## Compare two directories
```bash
diff <(ls /bin) <(ls /usr/bin)

1,37c1,983
< [
< bash
---
> AssetCacheLocatorUtil
```

Without process substitution, this requires temporary files:
```
$ ls /bin/ > bindir
$ ls /usr/bin/ > usrbindir
$ diff bindir usrbindir
```

## Read disks into string array

```bash
$ mapfile disks < <(lsblk -o PATH | grep -v 'PATH')
$ echo ${disks[@]}
/dev/sda /dev/sda1 /dev/sda2 /dev/sda3 /dev/nvme1n1
```

## Resources
- https://en.wikipedia.org/wiki/Process_substitution
- https://medium.com/factualopinions/process-substitution-in-bash-739096a2f66d
- https://medium.com/@linuxadminhacks/understanding-mapfile-command-in-linux-9a13a2e2008a
