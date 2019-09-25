# c9_ide

Tooling to build and run the core Cloud9 IDE in a Docker container.

## Usage

Example using docker:

```
docker run -d -p 5050:5050 -p 8080:8080 -p 8081:8081 -p 8082:8082 -v "$(pwd)"/workspace:/root/workspace jasonking/c9_ide:latest
```

Example using docker-compose:

```
git clone https://github.com/jasonking3/c9_ide.git
cd c9_ide
docker-compose up -d
```

Access the Cloud9 IDE via browser at `http://localhost:5050`.

> Note: These examples bind-mount the `./workspace` directory on the host to the `/root/workspace` in the container. This allows the workspace to survive a restart of the container.
