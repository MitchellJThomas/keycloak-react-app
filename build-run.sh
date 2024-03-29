# Build the image locally
# docker build . -t keycloak-react-app:dev
# Run the newly built image for test purposes
# docker run -d -p 3000:80 -v $PWD/keycloak.json:/usr/share/nginx/html/config/keycloak.json keycloak-react-app:dev

docker-compose -f docker-compose-build.yaml up --build
# On a Mac this opens Safari
# open http://localhost:3000
