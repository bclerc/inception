
NAME = containers
PROJECT_NAME = ft_containers


.PHONY: all stop log down build clean

all: $(NAME)

$(NAME):
		@docker compose -f ./srcs/docker-compose.yml up -d
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
		@rm -rf ./srcs/requirements/wordpress/volumes/*
		@rm -rf ./srcs/requirements/mariadb/data/*
		@rm -rf ./srcs/requirements/nginx/data/*
		@echo "Ok"
 