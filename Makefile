NAME = libft.a

SRC = ft_memcpy.c\
    ft_strlen.c\
    ft_calloc.c\
    ft_putchar_fd.c\
    ft_putnbr_fd.c\
    ft_putstr_fd.c\
    ft_strdup.c\
    ft_strlcpy.c\
    ft_strlcat.c\
    ft_substr.c\
    ft_strjoin.c\
    ft_strmapi.c\
    ft_tolower.c\
    ft_toupper.c\
    ft_isprint.c\
    ft_isascii.c\
    ft_isdigit.c\
    ft_isalnum.c\
    ft_isalpha.c\
    ft_memccpy.c\
    ft_atoi.c\
    ft_split.c\
    ft_memset.c\
    ft_bzero.c\
    ft_memchr.c\
    ft_strchr.c\
    ft_strrchr.c\
    ft_memmove.c\
    ft_itoa.c\
    ft_strnstr.c\
    ft_strncmp.c\
    ft_strtrim.c\
    ft_putendl_fd.c\
    ft_memcmp.c

OBJ = $(SRC:.c=.o)

FLAG = -Wall -Wextra -Werror

all: $(NAME)

.c.o:
	gcc $(FLAG) -c $(SRC)

$(NAME): ${OBJ}
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all