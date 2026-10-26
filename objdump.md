# objdump

`objdump` - display information about object files

## Basic usage
```bash
$ objdump -d -M intel a.out
```

## Common flags
- `-d, --disassemble`: Disassemble sections which are expected to contain instructions
- `-D, --disassemble-all`: Disassemble ALL sections (produces extensive output)
- `-M, --disassembler-options = <options>`: ex: `-M intel` will change assembly syntax to Intel
- `-x, --all-headers`: Includes header information such as if STACK is executable (`rw-`)
- `-t, --syms`: display symbol table information
