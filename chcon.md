# chcon

`chcon` - change file SELinux security context

See also: [SELinux](se_linux.md), [`semanage`](semanage.md), [`restorecon`](restorecon.md)

## Introduction

`chcon` is used for **temporarily** changing a pathname's label, which can be useful for experimentation purposes. A later relabel or [`restorecon`](restorecon.md) will overwrite it.

For permanent changes, use `semanage fcontext` followed by `restoreon`.

## Example

Suppose Apache is supposed to serve `/web/index.html`, but SELinux blocks access because the file has the wrong label:

```bash
# note the 'default_t' instead of 'httpd_sys_content_t'
$ ls -Z /web/index.html
unconfined_u:object_r:default_t:s0 /web/index.html

# *temporarily* change SELinux type (-t)
chcon -t httpd_sys_content_t index.html

# print updated label
$ ls -Z /web/index.html
unconfined_u:object_r:httpd_sys_content_t:s0 /web/index.html
```

## Other flags

```bash
# copy a source label to destination
chcon --reference path/to/source path/to/dest

chcon -t TYPE file      # Change SELinux type
chcon -u USER file      # Change SELinux user
chcon -r ROLE file      # Change SELinux role
chcon -l LEVEL file     # Change MLS/MCS level
chcon -R ... directory  # Apply recursively

chcon -v ...            # Verbose output
```
