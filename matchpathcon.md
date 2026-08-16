# matchpathcon

`matchpathcon` - get the default SELinux security context for the specified path from the file contexts configuration

See also: [SELinux](se_linux.md), [`restorecon`](restorecon.md)

## Introduction

`matchpathcon` prints what security context that SELinux expects a pathname to have. Labels can be changed temporarily, so this command is useful to show what the persistent policy expects.

```bash
# print current security context (note 'default_t')
$ ls -Z /var/www/html/index.html
unconfined_u:object_r:default_t:s0  /var/www/html/index.html

# print expected security context (note 'httpd_sys_content_t')
$ matchpathcon /var/www/html/index.html
system_u:object_r:httpd_sys_content_t:s0  /var/www/html/index.html
```

## Verification

Use `-V` to verify file context on disk matches defaults

```bash
$ matchpathcon -V /var/www/html/index.html
```
