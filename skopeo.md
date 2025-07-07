# skopeo

`skopeo` -- Command line utility used to interact with local and remote container images and container image registries

## List tags
Lists the version numbers available for an image. It can be useful for querying the latest version number.
```bash
skopeo list-tags docker://example.com/repo/image
```
