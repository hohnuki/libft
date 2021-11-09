# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hohnuki <hohnuki@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/01 21:54:36 by ohnukihirok       #+#    #+#              #
#    Updated: 2021/11/09 17:19:36 by hohnuki          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
	ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_strnstr.c \
	ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c \
	ft_toupper.c ft_tolower.c ft_memchr.c ft_memcmp.c ft_atoi.c \
	ft_calloc.c ft_strdup.c \
	ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
	ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c
OBJS = $(SRCS:.c=.o)

BONUS_SRCS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
	ft_lstdelone.c ft_lstclear.c ft_lstiter.c
BONUS_OBJS = $(BONUS_SRCS:.c=.o)

CFLAGS = -Wall -Werror -Wextra
CC = gcc -c
RM = rm -f
AR = ar rc

all : $(NAME)

$(NAME) : $(OBJS)
	@$(AR) $(NAME) $(OBJS)
	@ranlib $(NAME)

$(OBJS) : $(SRCS)
	@$(CC) $(CFLAGS) $(SRCS)

clean :
	@$(RM) $(OBJS) $(BONUS_OBJS)

fclean : clean
	@$(RM) $(NAME)

re : fclean all

bonus : $(BONUS_SRCS)
	@$(CC) $(CFLAGS) $(BONUS_SRCS)
	@$(AR) $(NAME) $(BONUS_OBJS)
	@ranlib $(NAME)

.PHONY : all clean fclean re
