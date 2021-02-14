##
## EPITECH PROJECT, 2021
## day01
## File description:
## Makefile
##

#COLOR
RED				=	\e[31m
GREEN			=	\e[32m
YELLOW			=	\e[33m
DEFAULT			=	\e[0m
BOLD			=	\e[1m

#TEXT
COMPILE			=	$$'$(BOLD)$(GREEN)[ Compiled the project ! ]\t$(DEFAULT)'
RE_COMPILE		=	$$'$(BOLD)$(GREEN)[ Recompiled the project ! ]\t$(DEFAULT)'
CLEAN			=	$$'$(BOLD)$(RED)[ Removed useless files... }\t$(DEFAULT)'
FCLEAN			=	$$'$(BOLD)$(RED)[ Removed binary... ]\t$(DEFAULT)'
TESTS_COMPILE	=	$$'$(BOLD)$(YELLOW)[ Excecuted Units tests... ]\t$(DEFAULT)'

SRCS	=	$(shell find ./src -name "*.cpp")

SRCS_NO_MAIN	=	$(shell find ./src -type f \( -iname "*.cpp" ! -iname "main.cpp" \))

OBJS	=	$(SRCS:.cpp=.o)

TESTS	=	$(shell find ./tests -name '*.cpp')

CRITERION	=	--coverage -lcriterion

USELESS		=	$(shell find . -type f -name "*~" -o -name "*.gcda" -o -name "*.gcno" -o -name "\#*\#" -o -name "v*")

LDFLAGS		=	-Wall -Wextra -Werror -W

NAME		=	cpp_bin

TEST_NAME	=	unit_tests

all:	$(NAME)

$(NAME):	$(OBJS)
	@g++ -o $(NAME) $(OBJS) $(LDFLAGS)
	@echo $(COMPILE)

%.o: %.cpp
	@g++ -o $@ -c $< -g

tests_run:
	@g++ -o $(TEST_NAME) $(SRCS_NO_MAIN) $(TESTS) $(CRITERION)
	@echo $(TESTS_COMPILE)
	@./$(TEST_NAME)
	gcovr --exclude tests/
	gcovr --exclude tests/ --branches

clean:
	@rm -f $(USELESS) $(OBJS)
	@echo $(CLEAN)

fclean: clean
	@rm -f $(TEST_NAME) $(NAME)
	@echo $(FCLEAN)

re: fclean all
	@echo $(RE_COMPILE)

.PHONY: all tests_run clean fclean re