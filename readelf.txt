READELF

readelf - display information about ELF files

ELF file (Executable and Linkable Format): Standard file format for executables, libraries, and core dumps

.text: code to execute
.data: initialized variable values

Similar to objdump, but provides more specific details.

# Example file, compile with: g++ -g hello_world.c -o hello_world
$ cat hello_world.c
#include <iostream>
int main()
{
    printf("Hello world!");
    return 0;
}

# Common flags:
-h = header information, e.g., magic #, machine, arch, entry points:
-S = section headers. Ex: .data, .bss, .text, .init
-s = symbol information.
-a = ALL information (equivalent to -hlSsrdVAi)
-p = information about a specific section, ex: readelf -p <section> elf_file

# Display information about the .strtab section:
$ readelf -p .strtab hello_world
String dump of section '.strtab':
  [     1]  Scrt1.o
  [     9]  __abi_tag
  [    13]  crtstuff.c
  [    1e]  deregister_tm_clones
  <...>

---