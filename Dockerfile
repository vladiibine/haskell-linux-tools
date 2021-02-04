FROM ubuntu:20.04

# RUN apt update && apt install -y cabal-install
RUN apt update && \
    apt install -y curl && \
    curl -sSL https://get.haskellstack.org/ | sh

RUN stack setup

WORKDIR /linux-tools

COPY . /linux-tools
RUN stack build

RUN echo "export PATH=$(find . -name bin):"'$PATH' >> ~/.bashrc