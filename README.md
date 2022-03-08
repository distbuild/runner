# runner

[![Build Status](https://github.com/distbuild/runner/workflows/CI/badge.svg?branch=main&event=push)](https://github.com/distbuild/runner/actions?query=workflow%3ACI)
[![codecov](https://codecov.io/gh/distbuild/client/branch/main/graph/badge.svg?token=7Ev6C30rKl)](https://codecov.io/gh/distbuild/client)
[![License](https://img.shields.io/github/license/distbuild/runner.svg)](https://github.com/distbuild/runner/blob/main/LICENSE)
[![Tag](https://img.shields.io/github/tag/distbuild/runner.svg)](https://github.com/distbuild/runner/tags)
[![Gitter chat](https://badges.gitter.im/craftslab/distbuild.png)](https://gitter.im/craftslab/distbuild)



## Introduction

*runner* is the build runner of [distbuild](https://github.com/distbuild) written in Rust.



## Prerequisites

- Rust >= 1.59.0



## Run

```bash
git clone https://github.com/distbuild/runner.git

cd runner
make build
./target/release/runner --config-file="$PWD/src/config/config.yml"
```



## Docker

```bash
git clone https://github.com/distbuild/runner.git

cd runner
make docker
docker run -v "$PWD"/src/config:/tmp ghcr.io/distbuild/runner:latest --config-file="/tmp/config.yml"
```



## Usage

```
USAGE:
    runner --config-file <NAME>

OPTIONS:
    -c, --config-file <NAME>    Config file (.yml)
    -h, --help                  Print help information
    -V, --version               Print version information
```



## Settings

*runner* parameters can be set in the directory [config](https://github.com/distbuild/runner/blob/main/src/config).

An example of configuration in [config.yml](https://github.com/distbuild/runner/blob/main/src/config/config.yml):

```yaml
apiVersion: v1
kind: runner
metadata:
  name: runner
spec:
  foo: foo
```



## License

Project License can be found [here](LICENSE).



## Reference
