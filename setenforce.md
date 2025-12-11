# setenforce

`setenforce` - modify the mode SELinux is running in

See also: [`getenforce`](getenforce.md), [`SELinux`](se_linux.md)

## Basic usage
Use `Enforcing` or `1` to put SELinux in enforcing mode.
Use `Permissive` or `0` to put SELinux in permissive mode.

```bash
# enforce SELinux
sudo setenforce 1

# disable SELinux
sudo setenforce 0
```
