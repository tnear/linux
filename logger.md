LOGGER

logger - enter messages into the system log (/var/log/syslog)

# Append to system log:
$ logger 'tnear comment'

$ tail -n1 /var/log/syslog
2023-09-22T09:29:57.259242-05:00 kali kali: tnear comment

# Log output of commands using command substitution:
$ logger $(date)

---