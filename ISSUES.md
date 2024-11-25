# Common General Issues

## Docker

Newest versions of Docker Desktop in MacOS require the following fix to use docker-compose:

````
sudo rm /usr/local/bin/docker-compose
sudo ln -s /Applications/Docker.app/Contents/Resources/cli-plugins/docker-compose /usr/local/bin/docker-compose
```

