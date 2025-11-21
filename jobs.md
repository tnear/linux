# jobs

`jobs` — display status of jobs in the current session

See also: [`bg`](bg.md), [`fg`](fg.md)

## Basic usage
```bash
# run process in background
$ gedit file.txt &

# use 'jobs' to see background processes
$ jobs
[1]  + running    gedit file.txt
```

## Long listing
Use `-l` to include job metadata such as PID.

```bash
$ jobs -l
[1]  + 214509 running    gedit file.txt
```
