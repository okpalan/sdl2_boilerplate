CC := gcc
CFLAGS := -std=c99 -Wall -Wextra -Wpedantic -mconsole

# Source and object files
SRC_DIR := ./src
INC_DIR := ./include
OBJ_DIR := ./obj
BIN_DIR := ./bin

# Use shorthand form of patsubst
SRC_FILES := $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES := $(SRC_FILES:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

# Target executable
TARGET := $(BIN_DIR)/game.exe
SYSTEM_USER=Phantom

# SDL2 configuration for Windows (replace with correct paths)
SDL_CFLAGS := -IC:\Users\$(SYSTEM_USER)\scoop\apps\sdl2\current\include
SDL_LIBS := -LC:\Users\$(SYSTEM_USER)\scoop\apps\sdl2\current\lib -lSDL2

# Targets and rules
all: $(TARGET)

$(TARGET): $(OBJ_FILES)
	@mkdir -f  $(BIN_DIR)
	$(CC) $(CFLAGS) $(SDL_CFLAGS) $^ -o $@ $(SDL_LIBS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -f $(OBJ_DIR)
	$(CC) $(CFLAGS) $(SDL_CFLAGS) -I$(INC_DIR) -c $< -o $@

clean:
	@rm -f $(OBJ_DIR) $(BIN_DIR)

.PHONY: all clean