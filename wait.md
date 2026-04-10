# wait

`wait` - wait for background processes to complete

## Wait for specific background job

Use `wait PID`.

```bash
sleep 5 &  # start background process
pid=$!     # get sleep's pid
wait $pid  # wait for sleep process to finish
echo '5 seconds of sleeping done!'
```

## Wait for all background jobs

Use `wait` (no arguments).

```bash
$ sleep 2 &
$ sleep 3 &
$ sleep 1 &

$ wait
echo "All jobs done"
```
