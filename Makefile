# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmonnier <gmonnier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/02 08:23:52 by gmonnier          #+#    #+#              #
#    Updated: 2017/12/28 11:48:00 by gmonnier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: all $(NAME) clean fclean re

NAME = libftprintf.a

CC = gcc
LINKER = gcc
CFLAGS = -Wall -Wextra -Werror -I includes/

SRC = \
	srcs/analyse.c \
	srcs/arg.c \
	srcs/check_colors.c \
	srcs/ft_itoa_x.c \
	srcs/printf_family.c \
	srcs/ft_wchar.c \
	srcs/get_str.c \
	srcs/get_str_nb.c \
	srcs/handle_sign_sharp.c \
	srcs/handle_width_prec.c \
	srcs/preset.c \
	srcs/utils.c \
	srcs/print.c \
	srcs/loop.c

SRC += \
	srcs/ft_atoi.c \
	srcs/ft_isdigit.c \
	srcs/ft_memalloc.c \
	srcs/ft_bzero.c \
	srcs/ft_memset.c \
	srcs/ft_putchar.c \
	srcs/ft_putstr.c \
	srcs/ft_strclr.c \
	srcs/ft_strdup.c \
	srcs/ft_strjoin.c \
	srcs/ft_strlen.c \
	srcs/ft_strncmp.c \
	srcs/ft_strcmp.c \
	srcs/ft_strsub.c \
	srcs/ft_strnew.c \
	srcs/ft_strcat.c \
	srcs/ft_ischarset.c \
	srcs/ft_strcpy.c

OBJS=$(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

%.o: %.c
	$(CC) -c $(CFLAGS) $^ -o $@ $(INCS)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
