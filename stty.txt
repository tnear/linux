STTY

stty - change and print terminal line settings

$ stty
speed 38400 baud; line = 0;
-brkint -imaxbel iutf8

## Flags
-a = display all settings

$ stty -a
cchars: discard = ^O; dsusp = ^Y; eof = ^D; eol = <undef>;
    eol2 = <undef>; erase = ^?; intr = ^C; kill = ^U; lnext = ^V;
    min = 1; quit = ^\; reprint = ^R; start = ^Q; status = ^T;
    stop = ^S; susp = ^Z; time = 0; werase = ^W;

---