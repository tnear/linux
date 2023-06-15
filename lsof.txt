LSOF

lsof - list open files

$ lsof -u root  # -u: list files opened by a particular user
$ lsof -c cron  # -c: list files opened by a command ('cron' in example to left)
$ lsof -p <pid> # -p: list files opened by PID

$ lsof -u root | less
COMMAND      PID USER   FD      TYPE DEVICE SIZE/OFF NODE NAME
systemd        1 root  cwd   unknown   /proc/1/cwd (readlink: Permission denied)
systemd        1 root  rtd   unknown   /proc/1/root (readlink: Permission denied)
systemd        1 root  txt   unknown   /proc/1/exe (readlink: Permission denied)

---