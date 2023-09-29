#-Wall -Werror
COMPILER_FLAGS:= -Wall -Werror -Wvla -ObjC
INCLUDE_FLAGS:= -Isrc
LINKER_FLAGS:= -lobjc -framework Cocoa -framework Foundation -framework Metal
SRC_FILES:= $(shell find src -type f \( -name "*.c" -o -name "*.m" \))

all: build run

build:
	@clang $(COMPILER_FLAGS) $(SRC_FILES) -o bin/app $(INCLUDE_FLAGS) $(LINKER_FLAGS)

run:
	@./bin/app