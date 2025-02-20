# wait

`wait` - wait for background processes to complete

## Basic usage

```bash
sleep 5 &  # start background process
pid=$!     # get sleep's pid
wait $pid  # wait for sleep process to finish
echo '5 seconds of sleeping done!'
