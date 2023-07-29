AS

AS - the portable GNU assembler.

# Create object file (file.o) from assembly script (file.s):
$ as -o file.o file.s

# Create executable file (file) from object file (file.o):
$ ld -o file file.o  # often 2nd step after 'as'

--Common flags--
-gstabs  Produce debug information in 'stabs' format
--32     Compile as 32-bit application

---