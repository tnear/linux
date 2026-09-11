# groupmod

`groupmod` - modify a group definition on the system

See also: [`groupadd`](groupadd.md), [`groupdel`](groupdel.md), [`getent`](getent.md)

## Basic usage

```bash
# create a test group
sudo groupadd testgroup1

# verify it exists
getent group testgroup1

# rename it using groupmod
sudo groupmod -n testgroup2 testgroup1

# verify the rename worked
getent group testgroup2
getent group testgroup1   # should return nothing now

# delete the test group
sudo groupdel testgroup2
```
