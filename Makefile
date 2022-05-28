
NAME = containers
PROJECT_NAME = ft_containers
VOLUMES =	/${HOME}/data/wordpress/ \
			/${HOME}/data/mariadb/ \
			/${HOME}/data/uptime-kuma/


.PHONY: all stop log down build clean fclean up

all: $(NAME)

$(NAME):
		@mkdir -p $(VOLUMES)
		@docker compose -f ./srcs/docker-compose.yml build --no-cache
		@echo "ft_inception ready, use make up"
log:
		@docker compose -f ./srcs/docker-compose.yml logs -f
up:
		@docker compose -f ./srcs/docker-compose.yml up -d
stop:
		@docker compose -f ./srcs/docker-compose.yml stop
down: stop
		@docker compose -f ./srcs/docker-compose.yml down
build:
		@docker compose -f ./srcs/docker-compose.yml build --no-cache
clean: down
		@echo "Deleting all files .."
		@sudo rm -rf $(VOLUMES)
		@echo "Ok"
fclean: down
		@docker image prune
		@docker system prune
		@echo "ok"
	
 