# nvme-connect

`nvme-connect` - Connect to a Fabrics controller.

This NVMe API connects to a **controller** (ex: `/dev/nvme1`) (not a subsystem or namespace). See [`nvme.md`](nvme.md) for more information on the NVMe hierarchy.

## Basic usage
```bash
# tcp connection to controller
sudo nvme connect -t tcp -n nqn.2024-08.io.spdk:cnode1 -a 10.11.12.13 -s 4420

# disconnect when done
sudo nvme disconnect -n nqn.2024-08.io.spdk:cnode1
```

## Common flags
### `-t <tr_type>, --transport=<trtype>`
Transport type. Permitted values include `rdma` (RoCE, iWARP, Infiniband), `fc` (fibre channel), `tcp` (for tcp/ip), `loop` (loopback connection on local host).

### `-n <subnqn>, --nqn <subnqn>`
Specifies the name (nqn = nvme qualified name) of the NVMe subsystem to connect to.

### `-a <traddr>, --traddr=<traddr>`
Specifies the network address of the controller. This value is typically an IPv4 address.

### `-s <trsvcid>, --trsvcid=<trsvcid>`
Specifies the transport service ID. For TCP and RDMA, this is the port number. ex: `4420`.
