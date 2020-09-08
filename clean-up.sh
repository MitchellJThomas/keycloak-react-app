docker-compose rm
docker volume rm keycloak-react-app_postgres_data
docker network rm keycloak-react-app_default
docker rmi keycloak-react-app:latest
docker rmi quay.io/keycloak/keycloak:8.0.1
docker rmi postgres:latest
