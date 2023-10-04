EXEC = out

ifdef RELEASE
	-Wall -Iinclude -std=gnu++2a -O3
else
	-Wall -g -Iinclude -std=gnu++2a -DDEBUG=1
endif 

LDFLAGS = -lm
LDFLAGS_STATIC = -lm

#`sdl2-config --static-libs` -static-libgcc -static-libstdc++ -lSDL2_image -lm

#SRC= $(wildcard src/*.cpp src/**/*.cpp)
SRC= $(shell find src -name "*.cpp")
_OBJS= $(SRC:.cpp=.o)

vpath %.h include
vpath %.cpp src

OBJS = $(patsubst src/%,$(OBJ_DIR)/%,$(_OBJS))
OBJ_DIR = bin


NB_FILES = $(words $(SRC))
CURRENT_NB = 0

all: start $(EXEC)

run: all
	./$(EXEC).exe

clean: clear all

start: 
	@if [ -z "$(NOCLEAR)" ]; then\
		clear;\
	fi
	@printf "\n\033[1;33mStarted compilation\n\033[0m"
	@printf "Compiling with command \033[0;36mg++ $(CFLAGS) -c \033[0;34mx.cpp\033[0;36m -o \033[0;34mx.o\033[0m\n"

$(OBJ_DIR)/%.o: %.cpp
	$(eval CURRENT_NB=$(shell echo $$(($(CURRENT_NB)+1))))
	@printf "\033[1;33m[$(CURRENT_NB)/$(NB_FILES)]\033[0m "
	@mkdir -p $(dir $@)
	@echo "Compiling $< into $@"
	@g++ $(CFLAGS) -c $< -o $@

$(OBJ_DIR): 
	@mkdir -p $(OBJ_DIR)

clear:
	touch bin/d
	-rm -r bin/*
	-rm *.exe

clear-exec:
	-rm *.exe

$(EXEC): $(OBJS)
	@printf "\033[1;33m[Linking]\033[0m with command \033[0;36mg++ \033[0;34m<all of the .o above>\033[0;36m -o $@ $(LDFLAGS) \033[0m\n"
	@g++ $^ -o $@ $(LDFLAGS) 
	@printf "\033[0;32mCompilation finished successfully !\n\033[0m"
