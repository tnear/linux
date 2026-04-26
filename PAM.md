# Pluggable Authentication Module

`PAM` - Pluggable Authentication Modules for Linux

## Motivation
PAM is a Linux framework that lets programs such as `login`, `sudo`, `sshd`, and `runuser` rely on a common authentication system.

Without PAM, every application would need to handle things like checking passwords and enforcing account restrictions.

PAM is described as *pluggable* because an app's corresponding modules can be changed without rewriting the application.

## Organization

Each service has a config file in `/etc/pam.d`.
```bash
$ ls -1 /etc/pam.d
login
passwd
runuser
sshd
su
sudo
```

### Workflow
When you run, for example, `runuser`, the flow is:

```bash
$ sudo
    -> PAM
        -> check password
        -> check account rules
        -> apply account policy
    -> allow or deny access
```

### Example PAM file

```bash
$ cat /etc/pam.d/runuser
# <type>   <control>    <module>         <args>  
auth       sufficient   pam_rootok.so
session    optional     pam_keyinit.so   revoke
session    required     pam_limits.so
session    required     pam_unix.so
```

- `type`: indicates what stages of processing
    - auth: checks identity
    - session: runs when a session starts or ends
- `control`: indicates module's importance
- `module`: program (module) to call
- `args`: arguments passed to program
