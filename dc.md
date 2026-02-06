dc

`dc` - an arbitrary precision calculator

`dc` (*desk calculator*) is the oldest surviving UNIX program.

See also: [`bc`](bc.md)

## Basic usage

`dc` uses *reverse-Polish* notation.

```bash
# take 2 and 3 and add (+). print result
dc> 2 3 + p
5

# compute 2^10
dc> 2 10 ^ p
1024
```

## String usage

```bash
# 5 - 3 = 2
$ echo '5 3 - p' | dc
2

# herestring for 12 * 9
$ dc <<< '12 9 * p'
108
```
