
# Task 1

## Starting the application
Build the image:
```
docker build -t cowsay:1.0 cowsay
```

Build and run the containers with the shared volume:
```
docker-compose -f docker-compose.yml up
```