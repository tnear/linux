# taskset

`taskset` - set or retrieve a process's CPU affinity

## Get CPU affinity of a PID

```bash
$ taskset -p <PID>                               
pid <PID>'s current affinity mask: ffffffff

$ taskset -cp $(pidof my_app)
pid 217's current affinity list: 0-31
```

- Each `f` represents 4 bits
- 8 `f` means 32-bit hex mask
- Therefore, it means that PID can be scheduled on any of the 32 CPU cores on the system (0-31).

## Pin process to specified core (CPU)

### CPU list syntax (preferred)
```bash
# core 0 only
taskset -c 0 ./my_program

# cores 0 and 1
taskset -c 0,1 ./my_program

# cores 0 through 3
taskset -c 0-3 ./my_program
```

### Mask syntax
```bash
# all 32 cores
taskset -c 0xffffffff ./my_program
```
