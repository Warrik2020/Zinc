ZNC ?= /usr/local/bin/znc

BUILD_DIR := build
BIN := $(BUILD_DIR)/znc
BIN_ASM := $(BUILD_DIR)/znc.s

ZN_SRC_DIR := src
ZN_MAIN := $(ZN_SRC_DIR)/main.zn
ZN_SRCS := $(shell find $(ZN_SRC_DIR) -type f -name '*.zn')

.PHONY: all clean rebuild test install

all: $(BIN)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(BIN): $(ZN_SRCS) | $(BUILD_DIR)
	$(ZNC) $(ZN_MAIN) -o $@

clean:
	rm -rf $(BUILD_DIR)/*.o $(BIN) $(BIN_ASM) $(BUILD_DIR)/*.s

rebuild:
	$(MAKE) clean
	$(MAKE) all

test: all
	bash test_compiler.sh

install: all
	cp $(BIN) /usr/local/bin/znc
