FROM ubuntu:latest

ENV \
  RUSTUP_HOME=/usr/local/rustup \
  CARGO_HOME=/usr/local/cargo \
  PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN \
  apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y \
    curl \
    gcc \
  && curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path --default-toolchain none -y
