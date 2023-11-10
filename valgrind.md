# VALGRIND

valgrind - a suite of tools for debugging and profiling programs

### Create example.c with a memory leak
```c
#include <stdlib.h>

int main() {
    int *arr = malloc(10 * sizeof(int));
    arr[0] = 123;

    // free(arr); without free, this causes a memory leak

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
==932954==    indirectly lost: 0 bytes in 0 blocks
==932954==      possibly lost: 0 bytes in 0 blocks
==932954==    still reachable: 0 bytes in 0 blocks
==932954==         suppressed: 0 bytes in 0 blocks
==932954== Rerun with --leak-check=full to see details of leaked memory
==932954==
==932954== For lists of detected and suppressed errors, rerun with: -s
==932954== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 0 from 0)
```
