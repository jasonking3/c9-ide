# c9-ide

Tooling to build and run the core Cloud9 IDE in Docker and Vagrant.

## Usage

All of the examples below will expose the Cloud9 IDE on port 5050.  Point your browser to `http://localhost:5050`

Example using docker:

```
docker run -d -p 5050:5050 -p 8080:8080 -p 8081:8081 -p 8082:8082 -v "$(pwd)"/workspace:/root/workspace jasonking/c9-ide:latest
```

Example using docker-compose:

```
git clone https://github.com/jasonking3/c9_ide.git
cd c9_ide
docker-compose up -d
```

> Note: These Docker examples bind-mount the `./workspace` directory on the host to the `/root/workspace` in the container. This allows the workspace to survive a restart of the container, but it may not work well on Windows due to differences between Windows and Linux filesystem permissions.

Example using vagrant:
```
vagrant up
```
