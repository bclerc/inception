
NAME = containers
PROJECT_NAME = ft_containers
VOLUMES =	srcs/requirements/wordpress/volumes/ \
			srcs/requirements/mariadb/data/ \
			srcs/requirements/nginx/data/

.PHONY: all stop log down build clean

all: $(NAME)

$(NAME):
		@mkdir -p $(VOLUMES)
		@docker compose -f ./srcs/docker-compose.yml up --build
		@docker compose -f ./srcs/docker-compose.yml logs -f

log:
		@docker compose -f ./srcs/docker-compose.yml logs -f
stop:
		@docker compose -f ./srcs/docker-compose.yml stop
down: stop
		@docker compose -f ./srcs/docker-compose.yml down
build:
		@docker compose -f ./srcs/docker-compose.yml build
clean: down
		@echo "Deleting all files .."
		@sudo rm -rf $(VOLUMES)
		@echo "Ok"
fclean: down
		@docker image prune
		@docker system prune
		@echo "ok"
	
 