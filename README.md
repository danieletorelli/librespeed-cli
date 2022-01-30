# librespeed-cli

Multi-arch docker image of [librespeed/speedtest-cli](https://github.com/librespeed/speedtest-cli).

## Supported architectures

- AMD64
- ARM (v7)
- ARM64

## Run

```sh
docker run --rm ghcr.io/danieletorelli/librespeed-cli
```

To list available servers:

```sh
docker run --rm ghcr.io/danieletorelli/librespeed-cli librespeed-cli --list
```

To use a specific server:

```sh
docker run --rm ghcr.io/danieletorelli/librespeed-cli librespeed-cli --server NN
```

For additional options:

```sh
docker run --rm ghcr.io/danieletorelli/librespeed-cli librespeed-cli --help
```
