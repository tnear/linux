# rpm-ostree

`rpm-ostree` - Hybrid image/package system for host operating system updates

See also: [`rpm`](rpm.md)

## The problem it tries to solve

On normal systems, you install packages through `dnf`. These commands *change the currently installed system*. Files under `/user/bin` and `/usr/lib` are modified.

Instead of modifying the current OS in place, `rpm-stree` builds a new version of the OS filesystem, and lets you boot into that new version.

### Example

While running version A, `rpm-ostree` builds version B. After next reboot, you use version B:

```
OS version A -> update -> OS version B
```

### Advantages
Rollback-friendly. Updates are safer because the older version is retained. If version B has issues, it is easy to roll back to version A.

### Disadvantages
Less flexibility. On conventional systems, you can simply run `sudo dnf install <pkg>` and have the package ready in moments.

With `rpm-ostree`, installing a package into base OS means creating a new deployment*, and often requires a reboot.

*Note: a *deployment* is one bootable instance of a particular OS filesystem.

## CLI

### `status`

Use `rpm-ostree status` to list the deployments (bootable instances) the machine has.

```bash
$ rpm-ostree status
Deployments:
● fedora:fedora/...
      Version: 42.20260810
      Commit: abcdef...

  fedora:fedora/...
      Version: 42.20260803
      Commit: 123456...
```

The `●` character indicates the currently booted deployment.

### `upgrade`
Run `rpm-ostree upgrade` to prepare a newly available version. It doesn't replace the current OS running. Instead, it creates a new deployment that becomes the default for the next boot.

### `rollback`
Run `rpm-ostree rollback` to change which deployment is the default. Commonly used if upgrading has issues.

### `install`
Run `sudo rpm-ostree install <pkg>` to install a package in a new deployment.

`rpm-ostree` creates a new deployment containing the base OS plus that package (called *package layering*). Requires reboot.

### `apply-live`
Normally, a reboot is required when installing packages. Use `apply-live` to apply to the current deployment.

If `rpm-ostree apply-live` refuses with:
> error: packages would be changed: N, allow replacement to override

...then the pending deployment contains upgrades/replacements of packages already present in the running deployment. Explicitly permit those replacements with:

`sudo rpm-ostree apply-live --allow-replacement`
