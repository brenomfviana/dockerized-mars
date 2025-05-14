build:
	docker build --file Dockerfile --tag mars-mips .

config:
	echo "UID=$(id -u)" > .env
	echo "GID=$(id -g)" >> .env
	echo "USER=$(whoami)" >> .env

up:
	docker compose -f compose.yml up -d --remove-orphans

down:
	docker compose -f compose.yml down

run:
	xhost +local:docker
	make up
	docker compose run mars
