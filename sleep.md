# sleep

`sleep` - delay for a specified amount of time (in seconds)

## Basic usage
```bash
# sleep for 1.5 seconds
$ sleep 1.5
```

## `SECONDS`
`SECONDS` in Bash is a special shell variable that tracks the number of seconds since it was assigned a value.

```bash
SECONDS=0
sleep 3
echo $SECONDS  # outputs 3
sleep 1
echo $SECONDS  # outputs 4
```

## Resources
- Source code: https://github.com/coreutils/coreutils/blob/master/src/sleep.c
