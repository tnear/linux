# GCOV

`gcov` - GNU coverage testing tool

`lcov` - a graphical GCOV front-end

## Simple example
### example.c
```c
#include <stdio.h>

int add(int a, int b) {
    return a + b;
}

int main() {
    int result = add(2, 3);
    printf("Result: %d\n", result);
    return 0;
}
```

### Compile program with coverage flag
```bash
gcc -fprofile-arcs -ftest-coverage example.c -o example
```

Note: `gcov` works best when the executable does not have an extension.

### Run executable
```
./example.out
```

Execution creates gcov data files (`.gcda` and `.gcno`) in pwd:

```bash
$ ll example.out*
-rwxr-xr-x 1 kali kali 27248 Oct 27 08:13 example.out
-rw-r--r-- 1 kali kali   124 Oct 27 08:15 example.out-example.gcda
-rw-r--r-- 1 kali kali   572 Oct 27 08:13 example.out-example.gcno
```

### Analyze coverage with `gcov`
```bash
$ gcov example.c
File 'example.c'
Lines executed:100.00% of 6
Creating 'example.c.gcov'
Lines executed:100.00% of 6
```

### Show how many times each line was executed
```bash
$  cat example.c.gcov
-:    0:Source:example.c
-:    0:Graph:example.gcno
-:    0:Data:example.gcda
-:    0:Runs:1
-:    1:#include <stdio.h>
-:    2:
1:    3:int add(int a, int b) {
1:    4:    return a + b;
-:    5:}
-:    6:
1:    7:int main() {
1:    8:    int result = add(2, 3);
1:    9:    printf("Result: %d\n", result);
1:   10:    return 0;
-:   11:}
```

## `gcov`/`lcov` files
### .gcno (notes) files
- Created during *compilation* when using `-ftest-coverage`
- Contain *static* information about line numbers and source code
- Generated once per source file during build time

### .gcda (data) files
- Created during *execution* of instrumented programs
- Contain *dynamic* information about actual code execution such as number of times a line was executed
- Generated or updated each time the instrumented program runs
