# keycloak-react-app
A single page web React app which utilizes a Keycloak IDP server.

This app was shamelessly copied from this [Scalac Keycloak
example](https://scalac.io/user-authentication-keycloak-1/) Thank you
Scalac for the code.

This repository makes building and experimenting with that code
easier using Docker.  Builds use a Docker trick - no need to install Node.  Once
built the JS is served to your browser using nginx vs Node.  Why?
Nginx is more likely to be your trusted webserver than Node.

Docker compose is used to start nginx, Keycloak and a Postgres
database using the keycloak.json file.  Once its running you
now can experiment with the React code and learn about Keycloak
features using its administration UI.

# Getting started

To develop on your local system, you will need to have [Docker
Composed installed](https://docs.docker.com/compose/install/) and a
your favorite editor... [I like Aquamacs ](http://aquamacs.org/) (shameless plug).

Docker Compose will download the [Keycloak
image](https://hub.docker.com/r/jboss/keycloak/) to run the Keycloak
server and a Postgres database.

Building the image locally can be done using the provided
[build-run.sh](build-run.sh) script.  You may want to edit it to
change system specific details such as open port numbers.

If you make changes to Keycloak, particularly changes to the OIDC
client attributes you may need to replace the [keycloak.json](keycloak.json) file with
the one downloaded from the Keycloak server.


# Github Actions and Packages

Commits to this repository automatically trigger the creation of [the
Docker image via Github Actions, available in the packages](packages).  See the
[.github/workflows/dockerimage.yml](.github/workflows/dockerimage.yml) file for how the image is built and
published.

Note: I had intended to use the Github built image for sharing the built React App with others.
However as of this writing Docker images build using Github packages
are not publicly accessable making them difficult to easily share.

