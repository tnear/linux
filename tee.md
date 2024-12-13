# tee

`tee` - read from standard input and write to standard output and files

Source code: https://github.com/coreutils/coreutils/blob/master/src/tee.c

## Write to a read-only file as `sudo`
```
echo 'text here' | sudo tee /path/to/read-only/file
```

## Display output of ps AND write to file
```
$ ps | tee ps.txt
```

## Append to previous file (instead of overwrite)
```
$ ps | tee -a ps.txt

# Show appended output:
$ cat ps.txt
    PID TTY          TIME CMD
 143914 pts/2    00:00:00 ps
 143915 pts/2    00:00:00 tee
    PID TTY          TIME CMD
 144662 pts/2    00:00:00 ps
 144663 pts/2    00:00:00 tee
```
