# gcc

`gcc` - GNU project C and C++ compiler

## Basic compilation
```
# create executable a.out
gcc file.c

# compile and link multiple files into one object file:
gcc f1.c f2.c -o objfile
```

## Common flags
| Flag          | Description |
|---------------|-------------|
|`-o`           | file.o Creates executable file.o |
|`-g`           | Produce debug symbols |
|`-g3`          | Produces extra debug info such as macro definitions |
|`-ggdb3`       | Similar to `-g3`, but is gdb-specific |
|`-Werror`      | Convert all warnings into errors |
|`-Wall`        | Enable common warnings |
|`-static`      | Force all linking to be static |
|`-std=c11`     | Permit C11 usage |
|`-c`           | Compile or assemble source files, but do not link |
|`-S`           | Compile but do not assemble |
|`-v`           | Verbose output |
|`-m32`         | Compile as 32-bit application |
|`-masm=dialect`| Specify assembly instructions dialect, ex: -masm=intel |
|`-pthread`     | Adds support for multithreading with the pthreads library |
|`-fno-stack-protector` | Disable canaries on function call stack |
|`-no-pie`      | Disable Position Independent Executable (PIE). Needed for ASLR |
|`-fno-omit-frame-pointer` | Preserve RBP register. gcc (on x64) defaults to optimizing it away |
|`-z execstack` | Indicates that the target needs an executable stack |
|`-fno-pic`     | PIC=position independent code. Jumps can be relative w/ PIC |
|`-nostdlib`    | Do not standard startup files or libraries when linking |
|`-x`           | Specify language. See example below |
|`-E`           | Output preprocessed source code (after file includes, macro expansion, ...). Useful for knowing LOC |

### Specify language
Use `-x` to specify the compilation language. For example, `gcc -x c` would compile as the C language (plus everything after would be also considered C).

The explicit language can be turned off with `-x none`.

Supported languages include: `c, c++, assembler, go`

## Assemble using gcc
```
# Step 1: -c does not link. Assemble and create file.o:
$ gcc -c file.s

# Step 2: link and create executable:
$ ld file.o -o execFile

# Compile but do not assemble or link. Creates assembly file:
$ gcc -masm=intel -S f1.c -o f1.s

# Compile to disable all protections:
gcc -m32 -g -mpreferred-stack-boundary=2 -fno-pic -z execstack -no-pie -fno-stack-protector -o f1 f1.c
```
