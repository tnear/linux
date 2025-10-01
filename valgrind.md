# Valgrind

valgrind - a suite of tools for debugging and profiling programs

## Example with a memory leak
```c
#include <stdlib.h>

int main() {
    int *arr = malloc(10 * sizeof(int));
    arr[0] = 123;

    // free(arr); // without free, this causes a memory leak
    return 0;
}
```

### Compile C program
```bash
$ gcc example.c -o example
```

### Run Valgrind on program
```bash
$ valgrind ./example
```

Valgrind produces output about memory usage. This indicates that 40 bytes of memory are leaked:
```
==932954== LEAK SUMMARY:
==932954==    definitely lost: 40 bytes in 1 blocks
==932954== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 0 from 0)
```

## Valgrind with `gdb`
Syntax to stop after zero errors:

```bash
valgrind --vgdb=full -vgdb-error=0 ./a.out
```

This will print instructions to `stdout` for attaching gdb, ex:

```
TO DEBUG THIS PROCESS USING GDB: start GDB like this
    /path/to/gdb ./a.out
and then give GDB the following command
  target remote | /usr/lib/valgrind/.. --pid=1234
```

## Threading
Valgrind supports threads by *serializing* all execution. Only one thread is run at a time using a Valgrind lock. Valgrind's locking scheme is pipe-based and does not guarantee fairness between threads. An alternative locking mechanism is available using `--fair-sched=yes`.

## Resources
- https://valgrind.org/docs/manual/manual-core.html
