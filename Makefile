up:
	@mkdir -p /home/mlouazir/data/db
	@mkdir -p /home/mlouazir/data/wp
	@docker compose -f srcs/docker-compose.yml up --build

up-b:
	@docker compose -f srcs/docker-compose.yml up -d --build

down:
	@docker compose -f srcs/docker-compose.yml down

exec:
	@docker compose -f srcs/docker-compose.yml exec -it $(s) bash

ls:
	@docker container ls -a
	@printf "\e[34m----------------------   CONTAINERS   ----------------------\e[0m\n"

	@docker image ls -a
	@printf "\e[34m------------------------   IMAGES   ------------------------\e[0m\n"
	
	@docker volume ls
	@printf "\e[34m------------------------   VOLUME   ------------------------\e[0m\n"

c-clean:
	@docker container prune -f

i-clean:
	@docker image prune -f -a

v-clean:
	@docker volume prune -f -a

re: down up

clean: c-clean i-clean v-clean

fclean: down clean
	@sudo rm -rf /home/mlouazir/data/db
	@sudo rm -rf /home/mlouazir/data/wp

.PHONY: up up-b down exec c-clean i-clean v-clean clean