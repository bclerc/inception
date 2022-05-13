
NAME = containers
PROJECT_NAME = ft_containers


.PHONY: all re clean fclean libft force doclean

all: $(NAME)

$(NAME): build
		docker compose -f ./srcs/docker-compose.yml up
stop:
		docker compose -f ./srcs/docker-compose.yml stop
down: stop
		docker compose -f ./srcs/docker-compose.yml down
build:
		docker compose -f ./srcs/docker-compose.yml build

re: down all%  