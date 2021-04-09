
# Task 1

## Docker image
Build the image:
```
docker build -t cowsay:1.0 cowsay
```
Login to your DockerHub account:
```
docker login --username=benceharomi
```
Tag the image:
```
docker tag cowsay:1.0 benceharomi/cowsay:latest
```

Push it to the DockerHub repo:
```
docker push benceharomi/cowsay
```

## Starting the application

Build and run the containers with the shared volume:
```
docker-compose -f docker-compose.yml up
```