# Windows Subsystem for Linux

Windows Subsystem for Linux (WSL) allows running a Linux environment on Windows without a virtual machine or dual booting.

## Installation
```
wsl --install -d <distribution_name>
wsl --install -d OracleLinux_9_1
```

## List distributions
Show which distributions are available to install:
```
wsl --list --online
```

Show additional metadata about installed distributions such as running/stopped:
```
wsl --list --verbose
  NAME               STATE           VERSION
* OracleLinux_9_1    Running         2
```

### Change default
```
wsl --set-default OracleLinux_9_1
```

## Shutdown
Use `wsl --shutdown` to shutdown (stop) *all* instances.

Use `wsl --terminate <distribution name>` to terminate a particular instance:
```
PS> wsl --terminate OracleLinux_9_1
The operation completed successfully.
PS > wsl --list --verbose
  NAME               STATE           VERSION
* OracleLinux_9_1    Stopped
```

## Paths

### Accessing Linux paths on Windows
The Linux paths default to `\\wsl.localhost`. For example, `\\wsl.localhost\<distro>\home\<user>`.

```
Microsoft.PowerShell.Core\FileSystem::\\wsl.localhost\OracleLinux> ls

    Directory: \\wsl.localhost\OracleLinux

Mode          LastWriteTime      Name
----          -------------      ----
d----     8/4/2024 10:02 AM      dev
d----     8/4/2024 10:02 AM      etc
d----    7/27/2024  4:32 PM      home
```

### Accessing Windows paths on Linux
Windows paths are located in `/mnt/<drive>`.

List `C:\` in Linux:
```bash
$ ls /mnt/c
'$Recycle.Bin'    'Program Files (x86)'         Users
```

## Applications

### Run Windows applications on Linux
Typically, add `.exe` to the application name:

```bash
travis@travis:~$ notepad
zsh: command not found: notepad
travis@travis:~$ notepad.exe  # opens Windows notepad.exe
```

### Run Linux applications on Windows
Prefix Linux commands with `wsl` to use them on Windows:
```
PS> ipconfig | wsl uniq
<unique lines>
```

## Resources
- https://en.wikipedia.org/wiki/Windows_Subsystem_for_Linux
- https://learn.microsoft.com/en-us/windows/wsl/basic-commands
- https://www.youtube.com/watch?v=vxTW22y8zV8
