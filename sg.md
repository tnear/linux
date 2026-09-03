# sg

`sg` - switch group - execute command as different group ID

See also: [`newgrp`](newgrp.md)

## Introduction

`sg` is similar to `newgrp`, but wraps a single command. `newgrp` creates a subshell that stays active until exiting.

```bash
# check current active group
id -gn
# e.g. tnear

# create a new group
sudo groupadd sharedgroup

# add self to it
sudo usermod -aG sharedgroup $USER

# use -c to run a command with sharedgroup active
sg sharedgroup -c "touch sgfile.txt"

# check the file's group ownership
ls -l sgfile.txt
# -rw-r--r-- 1 tnear sharedgroup 0 Sep  2 19:15 sgfile.txt

# unlike 'newgrp', no exit is needed
```
