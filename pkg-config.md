# pkg-config

`pkgconf` - a system for configuring build dependency information

## Mode version
Use `--modversion` to get the version number of an installed package.
```bash
pkg-config --modversion libpng
1.6.37
```

## Compiler flags
Use `--cflags` to get the compiler flags needed for library.

```bash
pkg-config --cflags libpng
-I/usr/include/libpng16
```
