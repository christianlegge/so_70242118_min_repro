.PHONY: all clean

CXXFLAGS := -std=c++17

BUILD_DIR := build
BIN_DIR := $(BUILD_DIR)/bin
OBJ_DIR := $(BUILD_DIR)/obj

BIN_NAME := prog
SRC_FILES := main.cpp $(wildcard subsrc/*.cpp)
OBJ_FILES := $(patsubst %.cpp,%.o,$(SRC_FILES))
OBJ_FILES := $(patsubst %,$(OBJ_DIR)/%,$(OBJ_FILES))
BIN_FILE := $(BIN_DIR)/$(BIN_NAME)

all: $(BIN_FILE)

$(BIN_FILE): $(OBJ_FILES)
	mkdir -p $(BIN_DIR)
	g++ $^ -o $@

$(OBJ_DIR)/%.o: %.cpp
	mkdir -p $(OBJ_DIR)
	g++ -c $^ -o $@

$(OBJ_DIR)/subsrc/%.o: subsrc/%.cpp
	mkdir -p $(OBJ_DIR)/subsrc
	g++ -c $^ -o $@

clean:
	rm -rf $(BUILD_DIR)/*