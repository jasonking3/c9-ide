# Replace with any existing Ubuntu-based Docker image ID you want.
FROM ubuntu:18.04

# Use UTF-8
ENV LANG C.UTF-8

# Install requirements
RUN apt-get update && \
	apt-get install -y \
    curl \
    git \
    python \
    python-pip \
    virtualenv \
    python3 \
    python3-pip \
    python3-venv \
    nodejs \
    build-essential

# Populate environment variables that are required by Cloud9 Core.
RUN echo "export USER=root\n\
export C9_PROJECT=c9-offline\n\
export C9_USER=root\n\
export C9_HOSTNAME=\$IP\n\
export C9_PORT=\$PORT\n\
export IDE_OFFLINE=1\n\
alias c9=/var/c9sdk/bin/c9" >/etc/profile.d/offline.sh

# Download Cloud9 Core into the Docker container.
WORKDIR /var
RUN rm -rf c9sdk && \
    mkdir c9sdk && \
    git clone https://github.com/c9/core.git c9sdk

# Install Cloud9 Core within the Docker container.
WORKDIR /var/c9sdk
RUN scripts/install-sdk.sh

# Have the Docker container listen to these ports at run time.
EXPOSE 5050 8080 8081 8082

# Run Cloud9 Core within the Docker container.
ENTRYPOINT ["node", "server.js", \
            "-w", "/root/workspace", \
            "--auth", ":", \
            "--listen", "0.0.0.0", \
            "--port", "5050"]
