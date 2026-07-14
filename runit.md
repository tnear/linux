# runit

`runit` is a minimal Unix init system and service supervisor. It is the default init on Void Linux and popular in Docker containers for its tiny footprint.

See also: [`systemd`](systemd.md)

## runit vs systemd

The two systems reflect different philosophies about what an init system should be.

### Scope

- `systemd` is an integrated platform. Beyond service management, it handles networking, DNS, user sessions, device events, timers, and more.
- `runit` is narrowly focused: boot, supervise, shut down. Everything else is out of scope.

### Complexity vs. Simplicity

- `systemd` models the system in rich detail. Unit files declare dependencies, ordering constraints, and resource limits.
- `runit` is just shell scripts and directories.

### Dependency Handling

- `systemd` builds a dependency graph from declarative unit files and resolves startup order automatically.
- `runit` has no such mechanism. Service ordering is the administrator's responsibility, handled manually during the boot stage.

## Containers

`runit`'s strengths align closely with container constraints: tiny binary, near-instant startup, no external dependencies. Its supervision model maps naturally onto containers: each process gets a dedicated supervisor, failures restart automatically, and the tree tears down cleanly on container stop. And because it expects foreground processes, it matches how well-behaved container workloads are already written.

Most of `systemd`'s extra scope, networking, DNS, user sessions, is irrelevant inside a container, where the runtime handles those concerns.
