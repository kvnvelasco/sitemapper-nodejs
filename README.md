# Visual Site Mapper - Node.js version
This repository contents source code of the Visual Site Mapper, Node.js version.

Visual Site Mapper is a free service that can quickly show a map of a site. The service is available at http://www.visualsitemapper.com.

The application uses Node.js, PM2 as process manager and MongoDB for data storage.

# Dependencies
This fork of the repository requires docker running on the host device.
get the latest stable release of docker here: https://www.docker.com/products/docker

# Running
The local environment can be spun up with `docker-compose up` this will fetch all
necessary dependencies. The website will be available on `localhost:3000` and the
database available at `localhost:27017`.

# Modifying dependencies
All bower and npm dependencies are stored inside docker-volume containers. As such,
the host environment has no access to them directly.

In order to add an npm module:

`docker-compose run server yarn add <module@version>`
if you don't use yarn yet, learn it. It's fantastic.

bower modules work the same except the `--allow-root` flag must be specified.

`docker-compose run server bower install <module#version> --allow-root`

#Modifying source
All other files are mounted to the docker container and when changed will reflect
on page refresh.


# License
Affero GPL v3
