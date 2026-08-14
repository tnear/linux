# rpm-ostree


See also: [`rpm`](rpm.md)

## Allow live upgrade
Fix this error: `error: packages would be changed: 20, allow replacement to override`.

```bash
sudo rpm-ostree apply-live --allow-replacement
```
