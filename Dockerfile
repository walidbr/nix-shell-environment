# Use Ubuntu as base image
FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

# Install prerequisites
RUN apt-get update \
    && apt-get install -y curl git ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Create Nix builder users
RUN groupadd -r nixbld \
    && for i in $(seq 1 10); do \
           useradd -r -g nixbld -G nixbld -M -N -s /bin/false nixbld$i; \
       done \
    && mkdir -m 0755 /nix && chown root /nix

# Install Nix (single-user)
RUN curl -L https://nixos.org/nix/install | sh

# Ensure nix binaries are on PATH
ENV PATH=/root/.nix-profile/bin:${PATH}

# Clone this repository and enter nix-shell
RUN cd /root/ \
    && git clone https://github.com/walidbr/nix-shell-environment.git \
    && cd nix-shell-environment \
    && nix-shell --run "echo 'Nix shell OK'"

# Default to an interactive shell
CMD ["nix-shell"]
