# Docker

*https://en.wikipedia.org/wiki/Docker_(software)*

Docker uses OS-level virtualization to package software in *containers*. Containers ensure that applications work consistently on different systems.

See also: [`docker`](docker.md), [`docker-api`](docker-api.md)

## Images
An **image** is a blueprint that contains everything needed to run an application (code, libraries, environment variables, etc.). The image is immutable.

## Containers
Docker containers encapsulate an application with all of its dependencies, making it consistent across different environments.

Containers are lightweight, making them more efficient than virtual machines because they share the host system's kernel.

## Key features
- Portability: Once a Docker container is created, it can be run on any system that has Docker installed. This reduces the "it works on my machine" problem in development.
- Efficiency: Containers share the host system's kernel, not requiring an OS per application. They start quickly and use less CPU and RAM than VMs.
- Isolation: Docker ensures that applications that are running in containers are isolated from each other and from the host system. This isolation improves security and allows for fine-grained control over system resources.
- Developer Productivity: Docker containers support a fast development cycle since developers can work in local containers that mirror the production environment.

## Docker layers
A *layer* in an image contains a set of filesystem changes (additions, deletions, or modifications) applied to a previous layer. Ex: first layer adds basic commands, second layer installs Python, third layer installs application dependencies, etc.

Every Docker image is an immutable stack of layers. Layers are the fundamental unit of how Docker creates images.

Each layer stores only the *diff* of the previous one.

### Layer advantages
- Immutable. Allows images to build safely on each other
- Layers can be shared if checksum matches
- Supports incremental builds if only later layers change (see below for mre details)

### Layer creation
The instructions `RUN`, `COPY`, `ADD` all produce a new layer. Other instructions (`CMD`, `ENTRYPOINT`, etc.) only set image metadata.

```bash
FROM ubuntu:24.04        # layer 1: base image (itself many layers)
RUN apt-get update       # layer 2: modified /var/lib/apt
RUN apt-get install curl # layer 3: added /usr/bin/curl and deps
COPY app.py /app/        # layer 4: added /app/app.py
```

### Container layer
Docker adds one writable layer on top of the read-only layers called the *container layer*. All runtime writes (logs, temp files, database writes, etc.) go here.

When the container is deleted, the container layer is also destroyed. Persistent data must be kept in a *volume*.

```bash
[ Container layer      ] # writable, lost when container is deleted
[ COPY app.py /app/    ] # read-only
[ RUN apt install curl ] # read-only
[ RUN apt update       ] # read-only
[ FROM ubuntu:24.04    ] # read-only
```

### Layer sharing and caching
- Layers are identified by a SHA256 hash of their contents. This has two important consequences:
1. Sharing across images. If two images share the same base (ubuntu:24.04), those layers exist only once on disk and in memory. Docker doesn't duplicate them.
1. Build cache. During a build, Docker checks whether a layer's inputs have changed. If not, it reuses the cached layer instead of re-running the instruction. This makes rebuilds fast.

#### Cache invalidation rules
- For `RUN`: the cache breaks if the instruction text changes
- For `COPY/ADD`: the cache breaks if the copied files change

Once any layer's cache is invalidated, **all subsequent layers are rebuilt**. This is because each layer only stores the *diff* from the previous one.

Bad example which invalidates cache on every code change:
```bash
dockerfileCOPY . /app/       # changes every time
RUN pip install -r reqs.txt  # must therefore rerun each time
```

Good example which orders from rare -> common:
```bash
dockerfileCOPY reqs.txt /app/ # rarely changes
RUN pip install -r reqs.txt   # cached unless requirements change
COPY . /app/                  # changes freely
```

## Mount points

### Volumes
Volumes are used for persistent data in containers and are managed by Docker. They are stored on the host filesystem, but Docker manages their location and lifecycle.

### Bind mounts
A *bind mount* takes a specific path on your host filesystem and mounts it directly into the container. Unlike volumes, Docker doesn't manage it. You are exposing a host directory as-is.

Bind mounts are most useful for development: you mount your source code on your host to a path in the container. Edits on your local editor are instantly reflected in the container.

## Dockerfile
A `Dockerfile` is a text file that contains all the commands to assemble an image.

Example `Dockerfile`:
```bash
# Use the official Ubuntu as a parent image.
# 'FROM' is typically the first line in a Dockerfile.
FROM ubuntu:latest

# Change the working directory. Subsequent statements
# which use relative paths will start from here.
WORKDIR /app

# RUN runs a command inside the image being built.
# RUN is commonly used to install and configure packages
# Each RUN creates a new layer. It is recommended to chain
# RUN commands together using '&&' to avoid bloating the
# image with unnecessary images
RUN apt-get update && apt-get install -y python3

# COPY adds files and folders from local machine to image's file system
COPY main.js /app/main.js

# ENV sets environment variables available to containers
ENV PATH=$PATH:/app/bin

# WORKDIR changes directory (creates if it doesn't exist)
# WORKDIR is recommended over 'RUN cd ...'
WORKDIR /app

# CMD is the default command to run
CMD ["python", "app.py"]  # exec form (preferred)
CMD python app.py         # shell form

# VOLUME declares a mount point
VOLUME /data
```

## Resources
- https://spacelift.io/blog/dockerfile
- docs.docker.com/get-started/docker-concepts/building-images/understanding-image-layers/
