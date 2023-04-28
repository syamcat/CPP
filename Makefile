NAME = program

### compile options ###
CXX = g++
CXXFLAGS = -Wall -Werror -Wextra
#OPTS = -fsanitize=address -g3

### files define ###
MAIN = main.cpp
SRCS = $(wildcard srcs/*.cpp)
INCS = $(wildcard incs/*.hpp)
# OBJS = $(MAIN:%.cpp=%.o) $(SRCS:%.cpp=%.o)

### color define ###
GREEN		=	\033[0;32m
RED			=	\033[0;31m
RESET		=	\033[0m

all	: $(NAME)

# %.o	:%.c
# 	$(CXX) $(CXXFLAGS) -c $< -o $@

$(NAME): $(OBJS)
#	$(CXX) $(CXXFLAGS) $(OBJS) -I $(INCS) -o $(NAME)
	@$(CXX) $(CXXFLAGS) $(MAIN) $(SRCS) -I $(INCS) -o $(NAME)
	@echo "make: $(GREEN)$(NAME) was created$(RESET)"

# clean	:
# 	rm -rf $(OBJS)

fclean	: clean
	@rm -rf	$(NAME)
	@echo "make: $(RED)$(NAME) was cleaned up$(RESET)"

re:	fclean
	make all

.PHONY:	all clean fclean re
