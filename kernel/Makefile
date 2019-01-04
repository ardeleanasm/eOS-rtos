
CC_PREFIX=rl78-elf-

CC=$(CC_PREFIX)gcc.exe

ROOT_DIR=..

COMPILER_FLAGS=-O0 -ffunction-sections -fdata-sections -g2 -Wstack-usage=40 -mg14 -c -DARCH=$(ARCH) -DMCU=$(MCU)


OUTPUT_DIR=$(ROOT_DIR)/bin


INCLUDE_FILES=\
	-I$(ROOT_DIR)/arch/ \
	-I$(ROOT_DIR)/include/eos/


FILES=\
	eos 

all: compile

compile:$(FILES)

eos:
	$(CC) $(COMPILER_FLAGS) $(INCLUDE_FILES) eos.c -o $(OUTPUT_DIR)/eos.o
	

 
