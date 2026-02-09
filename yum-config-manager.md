# yum-config manager

`yum-config-manager` - Manage  main and repository DNF configuration options, toggle which repositories are enabled or disabled, and add new repositories.

See also [`yum`](yum.md).

## Enable
Use `--enable` to enable a configuration.
```bash
$ sudo yum-config-manager --enable ol8_developer
```

Partial list of Oracle Linux configurations:
- `ol8_developer`
- `ol8_developer_EPEL`
- `ol8_codeready_builder`
- `ol8_addons`

## Resources
- https://docs.oracle.com/en-us/iaas/oracle-linux/developer/index.htm
