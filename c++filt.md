# c++filt

`c++filt` - demangle C++ and Java symbols

## Basic usage

```
$ c++filt _ZN4Math10Calculator3addEdd

Math::Calculator::add(double, double)
```

### Explanation of mangling syntax
```
// double add(double, double):
_ZN4Math10Calculator3addEdd
```

- `_Z`: start of mangled name (GNU C++ standard)
- `N`: beginning of nested name (ends with `E`, see below)
- `4Math`: namespace `Math` (4 characters)
- `10Calculator`: class `Calculator` (10 characters)
- `3add`: function `add` (3 characters)
- `E`: end of nested name (begins with `N`, see above)
- `dd`: two double parameters (for `double a` and `double b`)

## Another example
```
$ c++filt _ZN9wikipedia7article8wikilinkC1ERKSs

wikipedia::article::wikilink::wikilink(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
```
