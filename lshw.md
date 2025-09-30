# lshw

`lshw` - list hardware

## Get PCI address
```bash
$ lshw -class network -businfo
Bus info          Device       Class          Description
=========================================================
pci@0000:4b:00.0  ens300f0np0  network        MT2892 Family [ConnectX-6 Dx]
```
