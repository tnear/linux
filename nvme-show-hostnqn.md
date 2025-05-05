# nvme-show-hostnqn

`nvme-show-hostnqn` - Show the host NQN configured for the system

*host* is also known as *initiator* or *client*.

## Description
- `show-hostnqn` outputs the unique identifier that represents the current machine when it initiates NVMe-oF connections.
- The target can use this information for authentication (determining if the host is allowed to connect)
- The target can also use this information for access control (determining which storage resources an initiator can access)

## Basic usage
```bash
$ sudo nvme show-hostnqn
nqn.2014-08.org.nvmexpress:uuid:1b4e28ba-2fa1-11d2-883f-0016d3cca5e0
```
