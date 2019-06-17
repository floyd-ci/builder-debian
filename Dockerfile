ARG DISTRIBUTION=sid

FROM debian:$DISTRIBUTION-slim

RUN apt-get -qq update && apt-get -qq install -y --no-install-recommends \
        ca-certificates \
        cmake \
        ninja-build \
    && rm -rf /var/lib/apt/lists/*
