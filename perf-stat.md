# perf-stat

`perf-stat` - Run a command and gather performance counter statistics

## Collect statistics for 'ls'
```bash
$ perf stat ls
 Performance counter stats for 'ls':
              1.27 msec task-clock:u              #    0.036 CPUs utilized
                 0      context-switches:u        #    0.000 /sec
                 0      cpu-migrations:u          #    0.000 /sec
               108      page-faults:u             #   85.239 K/sec
         1,036,537      cycles:u                  #    0.818 GHz
         1,040,272      instructions:u            #    1.00  insn per cycle
           208,875      branches:u                #  164.855 M/sec
            12,090      branch-misses:u           #    5.79% of all branches

       0.002599947 seconds time elapsed

       0.002403000 seconds user
       0.000000000 seconds sys
```

Takeaways:
- 5.79% of branches predictions were missed by the branch predictor. For high performance code, this number should be less than 1%.

## Common flags
### `-a` = all CPUs
```bash
# If you have more than one CPU (lscpu | grep CPU), use -a to collect on ALL CPUs:
$ perf stat -a <cmd>
```

### `-e` = event to select (use 'perf list' to list events)
```bash
# perf stat [-e <event>] <cmd>
$ perf stat -e page-faults find /usr/include -name '*.[hc]' | xargs grep 'int main'
177      page-faults

       0.107765408 seconds time elapsed
```

### `-p` = process ID
```bash
$ perf stat -a -p <pid>
<Ctrl+C to end>

    2,359.18 msec task-clock              #    0.403 CPUs utilized
    7,599         context-switches        #  133.945 /sec
    14,451        page-faults             #    6.125 K/sec
```

## Resources
- "Branchless Programming in C++", https://youtu.be/g-WPhYREFjk
