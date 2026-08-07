# visudo

`visudo` - edit the sudoers file

See also: [`sudo`]

## Introduction

`visudo` is the recommended command for safely editing the sudoers file. It checks for syntax errors before saving because a broken sudoers file can prevent users from running `sudo`.

## Basic usage

```bash
sudo visudo

# check for errors
sudo visudo -c
```
