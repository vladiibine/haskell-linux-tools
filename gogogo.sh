#!/bin/bash

set -eux

docker build -t haskell-linux-tools .
docker run --rm -it haskell-linux-tools /bin/bash
