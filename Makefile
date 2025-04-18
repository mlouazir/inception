up:
	docker compose -f srcs/docker-compose.yml up --build

up-b:
	docker compose -f srcs/docker-compose.yml up -d --build

down:
	docker compose -f srcs/docker-compose.yml down

exec:
	docker compose -f srcs/docker-compose.yml exec -it $(s) bash

c-clean:
	docker container prune -f

i-clean:
	docker image prune -f

v-clean:
	docker volume prune -f

re: down up

clean: c-clean i-clean v-clean

fclean: down clean

.PHONY: up up-b down exec c-clean i-clean v-clean clean