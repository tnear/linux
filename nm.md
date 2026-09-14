NM

nm - name mangling - list symbols from object files

$ cat hello.c
#include <stdio.h>
int main()
{
    printf("hello, world\n");
}

$ nm hello.o
0000000000001139 T main
                 U puts@GLIBC_2.2.5
0000000000001050 T _start
<truncated>

---