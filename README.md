[![build](https://img.shields.io/github/actions/workflow/status/danieletorelli/librespeed-cli/docker.yml?branch=master&style=for-the-badge)](https://github.com/danieletorelli/librespeed-cli/actions?query=workflow%3A%22Docker%22+branch%3Amaster)
[![release](https://img.shields.io/github/v/release/danieletorelli/librespeed-cli?style=for-the-badge)](https://github.com/danieletorelli/librespeed-cli/releases/latest)

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
