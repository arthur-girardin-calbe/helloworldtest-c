CC = gcc

SRC = $(shell find . -name "*.c")

OBJ = $(SRC:.c=.o)

DEBUG = -ggdb -g

CFLAGS = -Wall -Wextra -Werror

VFLAG = --leak-check=full --show-leak-kinds=all --track-origins=yes

NAME = helloWorld

all:	$(OBJ)
		gcc $(CFLAGS) $(OBJ) -o $(NAME)


clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

tests_run:
	@echo "Running tests..."
