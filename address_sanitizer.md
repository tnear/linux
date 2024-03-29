# Address Sanitizer (ASan)

AddressSanitizer (ASan) is a programming tool which uses shadow memory to detect memory bugs.

### Create a C++ file with an out of bounds write

```c++
#include <iostream>
int main() {
    int arr[10] = {0};

    arr[15] = 25; // out-of-bounds write
    return 0;
}
```

### Compile with ASan flag: `-fsanitize=address`
`g++ -fsanitize=address -o overflow overflow.cpp`

### Run program and analyze its output
`$ ./overflow`

```
=========================================================
==938296==ERROR: AddressSanitizer: stack-buffer-overflow on address 0x7ffe55264bdc at pc 0x55a1dd91133d bp 0x7ffe55264b60 sp 0x7ffe55264b58
WRITE of size 4 at 0x7ffe55264bdc thread T0
    #0 0x55a1dd91133c in main (/tmp/overflow+0x133c)
    #1 0x7ff129446189 in __libc_start_call_main ../sysdeps/nptl/libc_start_call_main.h:58
    #2 0x7ff129446244 in __libc_start_main_impl ../csu/libc-start.c:381
    #3 0x55a1dd911130 in _start (/tmp/overflow+0x1130)

Address 0x7ffe55264bdc is located in stack of thread T0 at offset 108 in frame
    #0 0x55a1dd911208 in main (/tmp/overflow+0x1208)

  This frame has 1 object(s):
    [48, 88) 'arr' (line 4) <== Memory access at offset 108 overflows this variable
```
