PS

ps - process status - report a snapshot of the current processes.

# Example processes:
$ ps -aux
USER   PID %CPU %MEM    VSZ   RSS TTY   STAT START   TIME COMMAND
root     1  0.0  0.2 167480 12028 ?     Ss   Jan22   0:03 /sbin/init splash
root     2  0.0  0.0      0     0 ?     S    Jan22   0:00 [kthreadd]

# Flags:
-a = all user processes
-e = show all processes
-f = full format listing
-l = long format: includes niceness value (NI).
-u = user-oriented (extra columns). Note: -u is incompatible with -l
-x = include extra processes not attached to terminal

# Show niceness value (NI):
$ ps -axl
F   UID   PID    PPID NI    VSZ   RSS  COMMAND
4     0     1       0  0 167480 12028  /sbin/init splash
1     0     2       0  0      0     0  [kthreadd]


# f = Show process hierarchy (forest):
$ ps -a f
    PID TTY      STAT   TIME COMMAND
  25336 pts/2    Ss+    0:05 /usr/bin/zsh
  24422 pts/1    Ss     0:05 /usr/bin/zsh
 210854 pts/1    S+     0:00  \_ man top
 210862 pts/1    S+     0:00      \_ pager
  11551 pts/0    Ss     0:22 /usr/bin/zsh
 214803 pts/0    R+     0:00  \_ ps f

---