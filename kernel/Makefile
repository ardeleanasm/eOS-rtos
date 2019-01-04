
CC_PREFIX=rl78-elf-

CC=$(CC_PREFIX)gcc.exe

ROOT_DIR=..

COMPILER_FLAGS=-O0 -ffunction-sections -fdata-sections -g2 -Wstack-usage=40 -mg14 -c


OUTPUT_DIR=$(ROOT_DIR)/bin


INCLUDE_FILES=\
	$(CURR_DIR)/include

FILES=\
	eos 

all: compile

compile:$(FILES)

eos:
	$(CC) $(COMPILER_FLAGS) -I$(INCLUDE_FILES) eos.c -o $(OUTPUT_DIR)/eos.o


 
