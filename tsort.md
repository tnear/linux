# tsort

`tsort` - perform topological sort

Source code: https://github.com/coreutils/coreutils/blob/master/src/tsort.c

## Basic usage

The input to `tsort` is a list of pairs where each line specifies a dependency relationship:
- The first item must come before the second item
- Ex: the pair `A B` means `A` must complete before `B` can start

```bash
$ cat dependencies.txt
A B
B C
C D

$ tsort dependencies.txt
A
B
C
D
```

### Cycles

Topological sort is only possible on directed acyclic graphs (DAG). If the input contains a cycle, `tsort` reports an error.

```bash
$ cat dependencies.txt
A B
B A

$ tsort dependencies.txt
tsort: dependencies.txt: input contains a loop:
```
