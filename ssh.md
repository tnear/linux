# ssh

`ssh` — 'secure shell' - OpenSSH remote login client

Basic syntax:
```
$ ssh username@host

# Ex:
$ ssh tnear@example.edu
```

## Common flags
```
-X    Enables X11 forwarding
-Y    Enables trusted X11 forwarding (less secure)
-L    Local port forwarding tunnel
-N    Do not execute a remote command. This is useful for just forwarding ports.
-v    verbose mode. Use -vv or -vvv for extra verbosity
-i    identity file. Used to specify a private key
```

## Connect and allow trusted X11 forwarding
```
$ ssh -Y tnear@example.edu
```

## Forward port
This example tells the SSH server at ssh-server.example.com to forward port 8080 on the localhost to port 80 on the desired, but restricted, server: social.example.org:
```
$ ssh -L 8080:social.example.org:80 ssh-server.example.com
```

This allows you to access the restricted server using the url http://localhost:8080/


## X11: X Windows System v11
https://goteleport.com/blog/x11-forwarding/

X11 forwarding: an SSH protocol that enables users to run graphical applications
on a remote server and interact with them using their local display and I/O
devices. It is commonly relied upon by developers for securely interacting with
remote machines across wide and heterogeneous server fleets.

## Identity file
Use the `-i` flag to specify a path to an identity file (private key). Ex:

```
ssh -i /path/to/private/key
```

If unspecified, the he defaults are `~/.ssh/id_dsa`, `~/.ssh/id_ecdsa`,
`~/.ssh/id_ed25519`, and `~/.ssh/id_rsa`.
