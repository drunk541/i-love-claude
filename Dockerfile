FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    vim \
    nano \
    htop \
    screen \
    tmux \
    python3 \
    python3-pip \
    nodejs \
    npm \
    openssh-server \
    netcat \
    && apt-get clean

# Keep container alive
CMD ["tail", "-f", "/dev/null"]
