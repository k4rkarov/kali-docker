# Setting Up and Using the Kali-Docker Container

This guide walks you through cloning the `kali-docker` repository, building the Docker image using the provided Dockerfile, entering the container, and also running binaries without manually entering it.

## Prerequisites

- Docker installed on your system ([Docker Installation](https://docs.docker.com/get-docker/)).

## Steps

### 1. Clone the Repository

Run the following command to clone the `kali-docker` repository:

```bash
git clone https://github.com/k4rkarov/kali-docker.git
```

### 2. Build the Docker Image

Navigate to the cloned repository directory:

```bash
cd kali-docker
```

Build the Docker image using the provided Dockerfile:

```bash
docker build -t your_image_name:tag .
```

### 3. Run the Container

Run and enter the newly created container:

```bash
docker run -it --name your_container your_image_name:tag
```

### 4. Run Binaries Without Entering the Container

If you want to run binaries without entering the container, you can use the following command:

```bash
docker run --rm your_container binary_name binary_arguments
```

### 5. Cleanup (Optional)

If desired, you can stop and remove the container when no longer needed:

```bash
docker stop your_container
docker rm your_container
```
