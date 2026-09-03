# newgrp

`newgrp` - log in to a new group

See also: [`groupadd`](groupadd.md), [`getent`](getent.md), [`sg`](sg.md)

## Introduction

`newgrp` switches active group for the current session without needing to log out and back in. It starts a new shell where the effective GID is set to the specified group.

## Basic usage

```bash
# create a new group
sudo groupadd sharedgroup

# add self to it
sudo usermod -aG sharedgroup $USER

# show that current shell still doesn't have it active
id -gn

# switch into the new group for this session
newgrp sharedgroup

# confirm the switch worked
id -gn
# sharedgroup

# create a file and show group
touch testfile
ls -l testfile
# -rw-r--r-- 1 tnear sharedgroup 0 Sep  2 19:08 testfile

# leave subshell to return to original group
exit

# verify back to normal
id -gn
# back to original primary group
```
