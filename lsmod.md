# lsmod

`lsmod` - Show the status of modules in the Linux Kernel

See also: [`modprobe`](modprobe.md)

## List all kernel modules
Col 3 shows downstream module dependencies:
```bash
$ lsmod
Module                  Size  Used by
nft_chain_nat          16384  3
xt_MASQUERADE          20480  2
nf_nat                 57344  2 nft_chain_nat,xt_MASQUERADE
nf_conntrack_netlink   57344  0
```

## Query specific module
```bash
$ lsmod | grep nvme_fabrics
nvme_fabrics           36864  1 nvme_tcp
```
