##
## EPITECH PROJECT, 2021
## day01
## File description:
## Makefile
##

SRCS	=	$(shell find . -name "*.hs")

TESTS	=	$(shell find ./tests -name '*.hs')

USELESS		=	$(shell find ./tests -type f -name "*~" -o -name "*.o" -o -name "*.hi" -o -name "*.dyn_hi" -o -name "*.dyn_o" -o -name "\#*\#")

tests_run:
	@ghc --make -o unit_tests $(TESTS)
	./unit_tests

clean:
	@rm -f $(USELESS)

fclean: clean
	@rm -f unit_tests

re: fclean tests_run

.PHONY: clean fclean re