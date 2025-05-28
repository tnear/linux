# Brace Expansion

Brace expansion generates strings using basic patterns.

## Generate numeric sequences
```bash
# generate 1 to 10 (inclusive) with stride=1 (default)
$ echo {1..10}

# create 10 files
$ touch file{1..10}.txt

# stride=2
$ echo {1..10..2}
1 3 5 7 9
```

### Character sequences
This syntax also works for characters.
```bash
# generate a to f
$ echo {a..f}
a b c d e f
```

## Permutations
Two sets of brace expansion creates all possible combinations.
```bash
$ echo {a,b,c}-{1..4}
a-1 a-2 a-3 a-4 b-1 b-2 b-3 b-4 c-1 c-2 c-3 c-4
```

## Create multiple directories
```bash
# create /tmp/dir1, /tmp/dir2, /tmp/dir3
$ mkdir /tmp/{dir1,dir2,dir3}
```
