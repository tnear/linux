# fio

`fio` - flexible I/O tester

## Key
- `randrw` - random read/write
- `bs` - block size
- `disable_lat` - disable latency (safer)
- `unlink` - delete file when done

### Latency
- `clat` (completion latency) - time taken between when an I/O operation is submitted to the kernel and when it completes
- `slat` (submission latency) - time to submit to kernel
- `lat` (total latency) - total time for the I/O (slat + clat)

## Run FIO

### Command
This example uses a local file instead of a device, making it safe and easy to run.
```bash
$ fio --name=test --filename=/tmp/fio_test --size=100M --readwrite=randrw --blocksize=4k --direct=1 --runtime=10 --numjobs=1  --group_reporting --disable_lat=1 --unlink=1
```

### Job file
```bash
$ fio jobfile.fio
```

### Common flags
- `name`: string name for job
- `blocksize` (`bs`): block size in bytes. Default is 4096.
- `size`: total size of file I/O for each thread. Fio will run until this many bytes (100M above) have been transferred.
- `direct`: (bool) If `true`, it uses non-buffered I/O. Operations go directly to storage device, thus bypassing OS caching. Default is `false`.
- `runtime`: run until test completes but with a max timeout of 10 seconds
- `numjobs`: specifies the number of clones for the job. Each thread is spawned as an independent thread or process.
- `group_reporting`: display results as entire group instead of each individual job. Used in conjunction with `numjobs`.
- `stonewall, wait_for_previous`: wait for preceding job to exit before starting the next.
- `iodepth`: # of I/O units to keep in flight. Note that increasing iodepth beyond 1 will not affect synchronous workloads.

## Annotated output of fio job
`fio` returns results through stdout.

### Test configuration
- Test used random read/write (`randrw`).
- 4 KB block size for reads (`(R) 4096B-4096B`) and writes (`(W) 4096B-4096B`)
- Uses `psync` engine with a queue depth (`iodepth`) of 1
```
test: (g=0): rw=randrw, bs=(R) 4096B-4096B, (W) 4096B-4096B, (T) 4096B-4096B, ioengine=psync, iodepth=1
```

### Read performance
```
read: IOPS=1222, BW=4891KiB/s (5008kB/s)(47.8MiB/10001msec)
```
- Achieving 1,222 I/O operations per second for reads
- Bandwidth around 4.9 MB/s (`4891KiB/s`)
- Total read: 47.8 MiB over 10 seconds (`10001msec`)

### Read latency distribution
```
clat (usec): min=245, max=1101, avg=393.51, stdev=67.19
```
- clat = completion latency (see Key at top)
- Minimum latency: 245 microseconds
- Maximum latency: 1101 microseconds (1.1 milliseconds)
- Average latency: 394 microseconds

### Write performance
```
write: IOPS=1218, BW=4874KiB/s (4991kB/s)(47.6MiB/10001msec)
```
- Similar to reads: 1,218 IOPS
- Bandwidth about 4.87 MB/s
- Total written: 47.6 MiB

### System impact
```
cpu   : usr=0.79%, sys=6.50%, ctx=24419, majf=0, minf=10
```
- Low CPU usage (0.79% user, 6.50% system)
- No major page faults
- 10 minor page faults

### Device statistics
```
Disk stats (read/write):
    dm-0: ios=12113/12080  # Device mapper layer (like LVM)
    sda: ios=12228/12193   # Physical device
```
- Shows both logical (dm-0) and physical (sda) device statistics
- High utility (~99%) indicates the test was keeping the device busy

## Resources
- https://fio.readthedocs.io/en/latest/fio_doc.html
