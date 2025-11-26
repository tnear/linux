PERF-RECORD

$ man perf record
# perf-record - Run a command and record its profile into perf.data

# Record statistics for 'ls' to perf.data:
$ perf record ls

$ perf report
Samples: 2  of event 'cpu-clock:pppH', Event count (approx.): 500000
Overhead  Command  Shared Object      Symbol
  50.00%  ls       [kernel.kallsyms]  [k] queue_work_on
  50.00%  ls       libc.so.6          [.] __GI___libc_write

# -F = frequency (Hertz). Sample CPU 99 times/second:
$ perf record -F 99 <command>

# More flags:
# -a             = all CPUs
# -g             = Enable call-graph (stack chain/backtrace)
# -- sleep <num> = run for <num> seconds

# Sample 99Hz, all CPUs, get call graphs, run for 5 seconds:
$ sudo perf record -F 99 -ag -- sleep 5
[ perf record: Woken up 1 times to write data ]
[ perf record: Captured and wrote 1.127 MB perf.data (1980 samples) ]

---