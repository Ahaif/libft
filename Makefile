# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahaifoul <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/05 10:20:05 by ahaifoul          #+#    #+#              #
#    Updated: 2021/11/10 11:37:40 by ahaifoul         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS = ft_atoi.c  ft_split.c ft_strnstr.c ft_bzero.c ft_strchr.c ft_strtrim.c ft_calloc.c ft_memcmp.c ft_strdup.c ft_substr.c ft_isalpha.c ft_memcpy.c ft_striteri.c ft_tolower.c ft_isascii.c ft_memmove.c ft_strjoin.c ft_toupper.c ft_isdigit.c ft_memset.c ft_strlcat.c ft_isalnum.c ft_isprint.c ft_putchar_fd.c ft_strlcpy.c ft_itoa.c ft_putendl_fd.c ft_strlen.c ft_memchr.c ft_putnbr_fd.c ft_strmapi.c ft_strrchr.c  ft_putstr_fd.c ft_strncmp.c  

SRCB = $(SRCS) ft_lstnew.c ft_lstsize.c ft_lstmap.c ft_lstiter.c ft_lstdelone.c ft_lstadd_back.c ft_lstlast.c ft_lstadd_front.c ft_lstclear.c 

OBJB :=$(SRCB:.c=.o)
OBJS :=$(SRCS:.c=.o)
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	ar -cr $@ $^

%.o: %.c
	gcc $(CFLAGS) -c $< -o $@

bonus: $(OBJB)
	ar -cr $(NAME) $^

%.o: %.c
	gcc $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(OBJB)
fclean: clean
	rm -f $(NAME)
re: fclean all
.PHONY: all clean fclean re
