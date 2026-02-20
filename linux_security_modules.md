# Linux Security Modules

Linux Security Modules (LSMs) are a framework in the Linux kernel that support different security policies and mechanisms by providing hooks at critical kernel points. These modules allow you to enforce additional access controls beyond the default Linux discretionary access controls (DAC).

## SELinux
See [SELinux](se_linux.md).

## Landlock
Landlock, introduced in 2021, is an LSM which provides secure and unprivileged application sandboxing. It allows user-space applications to restrict their own access to files and directories, even if they are running with privileges.

OpenAI Codex is an example application which uses landlock by default.
