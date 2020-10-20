# keycloak-react-app
A single page web React app which utilizes the [Keycloak javascript adapter](https://github.com/keycloak/keycloak/tree/master/adapters/oidc/js/src/main/resources) and the [Keycloak IDP server](https://github.com/keycloak/keycloak).

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

The password for the `admin` user can be found in the
[docker-compose.yaml](docker-compose.yaml) file. Both the username
and password are configured via environment variables which can be
changed either in the docker-compose.yaml file or on the
docker-compose command line in the build.sh file.

The default port for the React UI is [3000](http://localhost:3000/) and the Keycloak UI
is [8080](https://locahost:8080/).  Use the `docker ps` command to determine the
actual ports for your system.

# The environment and logging in

When the docker compose images are running the end result is a
Keycloak server with a `React App Realm` and a `react-app` client
defined in that realm.

**To test the secured login you must add a user to the `React App
Realm`**

When visiting the [React UI](http://localhost:3000/) you should see a
link to the `secured component`.  Clicking on that link will re-direct your
browser to the Keycloak server.  Enter the user and password you
created above and the UI changes to reveal secured content e.g. the user Name and
Email.

# Cleaning up

The docker compose file builds a keycloak-react-app container as well
as downloading postgres and keycloak. Use the [clean-up.sh](clean-up.sh) script to
remove these containers from your system.

# Github Actions and Packages

Commits to this repository automatically trigger the creation of [the
Docker image via Github Actions, available in the packages](packages).  See the
[.github/workflows/dockerimage.yml](.github/workflows/dockerimage.yml) file for how the image is built and
published.

Note: I had intended to use the Github built image for sharing the built React App with others.
However as of this writing Docker images build using Github packages
are not publicly accessable making them difficult to easily share.
