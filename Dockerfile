FROM ubuntu:TODO

RUN :\
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
        --no-install-recommends \
        TODO
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && :
