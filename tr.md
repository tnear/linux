# tr

`tr` - translate or delete characters

Syntax:
`tr [OPTION]... STRING1 [STRING2]`

- Source code: https://github.com/coreutils/coreutils/blob/master/src/tr.c

## Basic conversions

### Convert lowercase to uppercase:
```bash
$ tr a-z A-Z <<< 'hello'
HELLO

# Alt syntax for above (translates better for different locales):
$ tr [:lower:] [:upper:]

# another alt syntax using bash parameter expansion (",,")
str='Hello World'
lowercase="${str,,}"  # lowercase = 'hello world'
```

### Convert braces to brackets:
```bash
$ tr '{}' '[]' <<< '{hello}{world}'
[hello][world]
```

## Text deletion
Use `-d` to delete text.

```bash
# delete spaces:
$ tr -d ' ' <<< 'a b c 1 2 3'
abc123

# Remove digits:
$ tr -d 0-9 <<< 'a 1 b 2 c 3'
a b c
```

## Squeeze
Use `-s` to squeeze text, i.e. remove consecutive duplicates.

```bash
# Remove consecutive 'a' or 'b' characters:
$ tr -s 'ab' <<< 'aaaccbbbaa'
accba
```

## Complement
Use `-c` to operate on everything BUT a set.

```bash
# Delete all non-lowercase letters:
$ tr -cd a-z <<< 'keep12_only lowerZcaseZ'
keeponlylowercase
```

## Caesar cipher

```bash
# encrypt
$ tr a-z b-za <<< 'caesar cipher'
dbftbs djqifs

# decrypt
$ tr b-za a-z <<< 'dbftbs djqifs'
caesar cipher
```
