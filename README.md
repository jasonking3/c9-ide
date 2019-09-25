# c9_ide

Tooling to build and run the core Cloud9 IDE in a Docker container.

## Usage

To run from Docker Hub:

```
docker run -d -p 5050:5050 -p 8080:8080 -p 8081:8081 -p 8082:8082 jasonking/c9_ide:latest
```

Or clone the repo and use docker-compose to build and run the container:

```
git clone https://github.com/jasonking3/c9_ide.git
cd c9_ide
docker-compose up -d
```

Then access the Cloud9 IDE via browser at `http://localhost:5050`.
