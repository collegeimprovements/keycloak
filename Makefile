.PHONY: up down ps logs restart build run deploy clean clean-build 

default: logs

up:
		- docker-compose up -d

down:
		- docker-compose down --remove-orphans

restart: down up

ps:
		- docker-compose ps

psa:
		- docker ps -a | grep keycloak

logs:
		- docker-compose logs --tail 100 -f

clean:
		- git clean -fd && git reset --hard && git pull

clean-build: clean build

