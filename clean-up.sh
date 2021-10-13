docker-compose rm -f -v -s
docker volume rm keycloak-react-app_postgres_data
docker network rm keycloak-react-app_default
docker rmi keycloak-react-app:latest
docker rmi quay.io/keycloak/keycloak@sha256:b4a1ec2d93477ef32587bb29932e9567f967919a0a2d6cd54748060f90180b35
docker rmi postgres:13
