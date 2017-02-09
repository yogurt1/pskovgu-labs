SRC = $(wildcard ./src/*.pas)
BIN = $(SRC:src/%.pas=bin/%)

all: build

clean:
	@rm -rf bin/*

build: $(BIN)

$(BIN): $(SRC)
	@$(FPC) 

.PHONY: all clean
