CC_PREFIX=rl78-elf-

CC=$(CC_PREFIX)gcc.exe

EXEC=eos

CURR_DIR=$(shell pwd)

ARCH=rl78
MCU=r5f104le

COMPILER_FLAGS=-O0 -ffunction-sections -fdata-sections -g2 -Wstack-usage=40 -mg14 -c

LINKER_FLAGS=-O0 -ffunction-sections -fdata-sections -g2 -Wstack-usage=40 -mg14 -Wl,-M=$(EXEC).map -Wl,--start-group -lgcc -Wl,--end-group -nostartfiles -Wl,-e_PowerON_Reset -T arch/$(ARCH)/$(MCU)/linker_script.ld






INCLUDE_FILES=\
	$(CURR_DIR)/include



OUTPUT_DIR=bin

OBJECTS = $(wildcard bin/*.o)

all: clean create_dirs compile link


create_dirs:
	mkdir -p $(OUTPUT_DIR)

link:
	$(CC) $(LINKER_FLAGS) $(OBJECTS) -o $(OUTPUT_DIR)/$(EXEC)

ifeq ($(ARCH),rl78)
ifeq ($(MCU),r5f104le)
target: 
	cd arch/$(ARCH)/$(MCU) && make all

endif

endif

compile: target
	cd kernel && make all

eos.c:
	$(CC) $(COMPILER_FLAGS) -I$(INCLUDE_FILES) kernel/eos.c -o $(OUTPUT_DIR)/eos.o


clean:
	rm -rf bin/
