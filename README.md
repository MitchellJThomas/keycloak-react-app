# keycloak-react-app
A single page web React app which utilizes a Keycloak IDP server.

This app was shamelessly copied from this [Scalac Keycloak
example](https://scalac.io/user-authentication-keycloak-1/) Thank you
Scalac for the code.  This repo takes that code one step further and serves it to your browser.

# Github Actions and Packages

Commits to this repository automatically trigger the creation of [the
Docker image via Github Actions, available in the packages](packages).  See the
.github/workflows/dockerimage.yml file for how the image is built and
published.

# Local development

To develop on your local system, you will need to have [Docker
installed](https://www.docker.com/products/docker-desktop), the
[Keycloak image](https://hub.docker.com/r/jboss/keycloak/) to run the
Keycloak server and of course your favorite editor... [I like Aquamacs
(plug)](http://aquamacs.org/).

Building the image locally can be done using the provided build-run.sh script.  You may want to edit it to change system specific details such as open port numbers.

To specify the proper server you must download the installation json file for the provided client, replacing it with the keycloak.json file currently in this repository.