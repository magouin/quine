# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: magouin <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/05/27 13:24:03 by magouin           #+#    #+#              #
#    Updated: 2017/11/30 16:50:35 by magouin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COLLEEN	= Colleen
GRACE	= Grace
SULLY	= Sully

CC		= gcc
WFLAGS	= -Wall -Wextra -Werror

DOBJ	= obj

SRC_COLLEEN	= Colleen.c
SRC_GRACE	= Grace.c
SRC_SULLY	= Sully.c

OBJ_COLLEEN	= Colleen.o
OBJ_GRACE	= Grace.o
OBJ_SULLY	= Sully.o

FOBJ_COLLEEN	:= $(addprefix $(DOBJ)/, $(OBJ_COLLEEN))
FOBJ_GRACE		:= $(addprefix $(DOBJ)/, $(OBJ_GRACE))
FOBJ_SULLY		:= $(addprefix $(DOBJ)/, $(OBJ_SULLY))

all: $(COLLEEN) $(GRACE) $(SULLY)
		

$(COLLEEN): $(FOBJ_COLLEEN)
		gcc -o $@ $(FOBJ_COLLEEN)

$(GRACE): $(FOBJ_GRACE)
		gcc -o $@ $(FOBJ_GRACE)

$(SULLY): $(FOBJ_SULLY)
		gcc -o $@ $(FOBJ_SULLY)

$(DOBJ)/%.o:
		@mkdir $(DOBJ)
			$(CC) $(WFLAGS) -c $(SRC_COLLEEN) -o $(FOBJ_COLLEEN)
			$(CC) $(WFLAGS) -c $(SRC_GRACE) -o $(FOBJ_GRACE)
			$(CC) $(WFLAGS) -c $(SRC_SULLY) -o $(FOBJ_SULLY)

clean:
		@rm -rf $(DOBJ)

fclean: clean
		@rm -rf $(COLLEEN)
		@rm -rf $(GRACE)
		@rm -rf $(SULLY)

re: fclean all

.PHONY: all libft clean fclean re