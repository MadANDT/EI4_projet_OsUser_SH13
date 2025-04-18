# Compiler and flags
CC = gcc
CFLAGS = -g #-Wall -Wextra
SDL_FLAGS = `sdl2-config --cflags --libs` -lSDL2_image -lSDL2_ttf -lpthread

# Targets
TARGETS = server sh13

# Source files
SERVER_SRC = server.c
CLIENT_SRC = sh13.c

# Object files
SERVER_OBJ = $(SERVER_SRC:.c=.o)
CLIENT_OBJ = $(CLIENT_SRC:.c=.o)

# Default target
all: $(TARGETS)

# Compile server
server: $(SERVER_OBJ)
	$(CC) $(CFLAGS) -o $@ $^

# Compile client
sh13: $(CLIENT_OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(SDL_FLAGS)

# Clean up build files
clean:
	rm -f $(TARGETS) $(SERVER_OBJ) $(CLIENT_OBJ)

# Phony targets
.PHONY: all clean