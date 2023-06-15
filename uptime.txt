UPTIME

uptime - Tell how long the system has been running.

$ uptime
17:20:05 up 58 min,  1 user,  load average: 0.36, 0.31, 0.29

# 17:20:05: current time
# up 58 min: uptime
# 1 user: number of logged in users

# System load averages:
0.36 = Average load on CPU over the 1 minute.
0.31 = Average load on CPU over last 5 minutes.
0.29 = Average load on CPU over last 15 minutes.

# On a 4-CPU machine, the max value is 4.
$ lscpu | grep CPU
CPU(s):      4

# Therefore, the percent resource usage for above numbers is 0.36 / 4 * 100 = 9%.

---