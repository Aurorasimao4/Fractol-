# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: asimao <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/28 17:12:29 by asimao            #+#    #+#              #
#    Updated: 2024/06/28 17:14:55 by asimao           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fractol

CC = gcc
CFLAGS = -Wall -Wextra -Werror
LDFLAGS = -L ./minilibx-linux/ -lmlx -lXext -lX11 -lm

SRC_DIR = ./src
OBJ_DIR = ./obj
INC_DIR = ./include

SRCS = $(wildcard $(SRC_DIR)/*.c)
OBJS = $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRCS))

all: $(NAME)

$(NAME): $(OBJS)
	@echo "Linking $(NAME)..."
	@$(CC) $(OBJS) $(LDFLAGS) -o $@
	@echo "\033[0;32mBuilding completed!\033[0m"

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	@echo "Compiling $<..."
	@$(CC) $(CFLAGS) -I $(INC_DIR) -c $< -o $@

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

clean:
	@echo "Cleaning object files..."
	@rm -f $(OBJ_DIR)/*.o

fclean: clean
	@echo "Cleaning all generated files..."
	@rm -f $(NAME)

re: fclean all

.PHONY: clean fclean re all
