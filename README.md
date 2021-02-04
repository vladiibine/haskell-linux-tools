# LinuxTools

The utilities in this project are designed to be run from a docker container. The main reason for this is to document the haskell environment setup.

## Installation

### Requirements
docker

### Installation steps
```
docker build -t haskell-linux-tools
```

## Running
```
docker run --rm -it haskell-linux-tools /bin/bash
```

## Or install/run in one go
```
./gogogo.sh
```

## Testing
Run this either in docker or locally (if you installed stack)
```
stack test
```

## Lessons learned
### About cabal
* it builds faster (3s)
* it depends on the OS version of GHC, so might be harder to configure with a custom GHC
* documentation is hard to find

### About stack
* builds slower (8s)
* very good docs
* I think it might be able to download for us an isolated ghc version (claims to)
* can generate project templates
* chose stack, based on the fact that it has good docs
