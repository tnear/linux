# nvme-resv

NVMe reservations provide access control that enable multiple hosts to coordinate shared access to an NVMe namespace. A reservation allows a host to acquire exclusive access to a namespace. It also allows the reservation holder to grant specific types of access to other registered hosts.

NVMe reservations are patterned after how iSCSI operate.

## Reservation types
1. Write exclusive. Only register holder can write. All registered host can read.
1. Exclusive access. Only the reservation holder can write or read. Other hosts get I/O errors
1. Write exclusive (registrants only). All registered hosts can write

There exist a few others, but they are less common.

## Workflow
1. Host registers with a namespace using a unique registration key
    - `nvme resv-register`
1. Host acquires a reservation of a specified type
    - `nvme resv-acquire`
    - Different reservation types include exclusive, write exclusive
1. Host releases registration when done
    - `nvme resv-release`
