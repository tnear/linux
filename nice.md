NICE

nice - run a program with modified scheduling priority
nice runs a command with particular CPU priority

Range: -20 is highest priority and 19 is lowest priority

# Get default niceness:
$ nice
0

# Run 'ls' with a different priority (5):
$ nice -n 5 ls

# Shows niceness value of a process in 'NI' column:
$ ps -axl
F   UID  PID  PPID PRI  NI    VSZ   RSS WCHAN  STAT  TIME COMMAND
4     0    1     0  20   0 167864 12380 -      Ss    0:05 /sbin/init splash

---