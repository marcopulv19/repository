# Docker Cheatsheet

## Docker Image Commands

```bash
docker build -t <image_name> .        # Build an image from a Dockerfile
docker pull <image_name>              # Pull an image from a registry (e.g., Docker Hub)
docker push <image_name>              # Push an image to a registry
docker images                         # List all images on the system
docker rmi <image_name>               # Remove an image
```

## Docker Container Commands

```bash
docker run -it <image_name> <command> # Run a container from an image
docker ps                             # List running containers
docker ps -a                          # List all containers, including stopped ones
docker exec -it <container_name> <command>  # Execute a command in a running container
docker stop <container_name>          # Stop a running container
docker start <container_name>         # Start a stopped container
docker restart <container_name>       # Restart a running or stopped container
docker rm <container_name>            # Remove a container
docker logs <container_name>          # View the logs of a container
```

## Docker System Commands

```bash
docker info                           # Display system-wide information about Docker
docker version                        # Show the Docker version
docker-compose up                     # Start all containers defined in a `docker-compose.yml` file
docker-compose down                   # Stop and remove all containers defined in a `docker-compose.yml` file
docker-compose build                  # Build images defined in a `docker-compose.yml` file
```