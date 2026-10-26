OBJDUMP

objdump - display information about object files

# Common example usage:
$ objdump -d -M intel a.out


# Common flags:
-d, --disassemble = disassemble
Disassemble sections which are expected to contain instructions

-D, --disassemble-all = disassemble all
Disassemble ALL sections (produces extensive output)

-M, --disassembler-options = <options>
ex: '-M intel' will change assembly syntax to intel

-x, --all-headers = display header information
Includes information such as if STACK is executable (rw-)

-t, --syms = display symbol table information

---