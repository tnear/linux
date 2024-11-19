# pidof

`pidof` - find the process ID of a running program

## Get all process IDs of VSCode
```
$ pidof code
252444 252433 252163 252150 252103
```

## Kill all processes of specified name
```
pidof process_name | xargs kill
pidof process_name | xargs kill -9
```
