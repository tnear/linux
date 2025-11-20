JOBS

jobs — display status of jobs in the current session

# Run process in background
$ gedit file.txt &

$ jobs
[1]  + running    gedit file.txt

# -l = include metadata such as PID:
$ jobs -l
[1]  + 214509 running    gedit file.txt

---