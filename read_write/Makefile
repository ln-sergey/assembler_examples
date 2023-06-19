# List of assembly source files
SOURCES := $(wildcard *.S)

# Output directory
BUILD_DIR := build

# Object files
OBJECTS := $(addprefix $(BUILD_DIR)/,$(SOURCES:.S=.o))

# Compiler flags
NASMFLAGS := -f elf

# Linker flags
LDFLAGS := -m elf_i386 -s

# Output executable
EXECUTABLE := $(target)

.PHONY: all clean

all: $(BUILD_DIR) $(BUILD_DIR)/$(EXECUTABLE)

$(BUILD_DIR)/$(EXECUTABLE): $(OBJECTS)
	ld $(LDFLAGS) -o $@ $^

$(BUILD_DIR)/%.o: %.S
	nasm $(NASMFLAGS) -o $@ $<

$(BUILD_DIR):
	mkdir -p $@

clean:
	rm -rf $(BUILD_DIR)
