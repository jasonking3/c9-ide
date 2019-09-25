# c9_ide

Tooling to build and run the core Cloud9 IDE in a Docker container.

## Usage

To run the automated build from Docker Hub:

```
docker run -d -p 5050:5050 -p 8080:8080 -p 8081:8081 -p 8082:8082 jasonking/c9_ide:latest
```

Or, build the container yourself and run locally via docker-compose:

```
docker-compose up -d
```
