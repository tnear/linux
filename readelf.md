# readelf

`readelf` - display information about ELF files

ELF file (Executable and Linkable Format): Standard file format for executables, libraries, and core dumps

`readelf` is similar to `objdump`, but provides more specific details.

## Terminology
```
.text: code to execute
.data: initialized variable values
.bss: block starting symbol (typically data with zeroes)
.debug_info: stores debug symbols (from -g3 compilation flag)
```

## Common flags
```
-h = header information, e.g., magic #, machine, arch, entry points:
-S = section headers. Ex: .data, .bss, .text, .init
-s = symbol information.
-a = ALL information (equivalent to -hlSsrdVAi)
-p = information about a specific section, ex: readelf -p <section> elf_file
-W = wide data (recommended)
```

## Sections
Example file, compile with: `gcc -g3 hello_world.c`
```c
$ cat hello_world.c
#include <iostream>
int main()
{
    printf("Hello world!");
    return 0;
}
```

### Display sections
Use `-S` to  get sections. Also add `-W` for wide output.
```
There are 39 section headers, starting at offset 0xa248:

Section Headers:
[Nr] Name        Type      Address Off    Size   ES Flg
[ 0]             NULL      0000000 000000 000000 00
[13] .plt        PROGBITS  0401020 001020 000020 10  AX
[14] .text       PROGBITS  0401040 001040 0000fb 00  AX
[15] .fini       PROGBITS  040113c 00113c 00000d 00  AX
[16] .rodata     PROGBITS  0402000 002000 00001c 00   A
[24] .data       PROGBITS  0404020 003020 000004 00  WA
[25] .bss        NOBITS    0404024 003024 000004 00  WA
[26] .comment    PROGBITS  0000000 003024 000032 01  MS
[30] .debug_info PROGBITS  0000000 003308 000090 00
[36] .symtab     SYMTAB    0000000 0097f8 0006a8 18
[37] .strtab     STRTAB    0000000 009ea0 00020d 00
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
  L (link order), O (extra OS processing required), G (group), T (TLS),
  C (compressed), x (unknown), o (OS specific), E (exclude),
  l (large), p (processor specific)
```
