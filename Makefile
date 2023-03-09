# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jsarabia <jsarabia@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/08 11:45:24 by jsarabia          #+#    #+#              #
#    Updated: 2023/03/08 16:06:29 by jsarabia         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = gcc
CFLAGS = -Wall -Werror -Wextra

OBJS = ft_printf.o ft_putstr_fd.o ft_putchar_fd.o ft_putaddress.o ft_calloc.o ft_strlcpy.o ft_putnbr_fd.o ft_putunsigned.o ft_puthexamin.o ft_puthexamay.o

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs libftprintf.a $(OBJS) ft_printf.h

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	/bin/rm -f *.o

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
