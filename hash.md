# hash

Commands run in the shell are stored in a hash table.

## List entries
The hash table displays the full path to the command and the number of times it was run ('hits').
```bash
$ hash
hits	command
   1	/usr/bin/whoami
   4	/usr/bin/man
   2	/usr/bin/ls
   1	/usr/bin/w
```

## Add command to hash table without running it
Calling hash directly on a command adds it to the table with 0 hits.

```bash
$ hash grep xargs
$ hash
hits	command
   0	/usr/bin/grep
   0	/usr/bin/xargs
   1	/usr/bin/whoami
```

## Reset table
To clear (reset) the table, use the `-r` flag.
```bash
$ hash -r
$ hash
hash: hash table empty
```

## Builtin commands are not listed
The `hash` command does not list any shell built-in commands such as `pwd`, `cd`, and `echo`.

```bash
$ pwd
$ hash
hash: hash table empty
```

## Resources
- https://www.baeldung.com/linux/hash-command
