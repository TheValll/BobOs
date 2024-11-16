FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
    nasm \
    make \
    dosfstools \
    gcc \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
