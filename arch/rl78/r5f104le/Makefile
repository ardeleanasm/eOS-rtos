CC_PREFIX=rl78-elf-

CC=$(CC_PREFIX)gcc.exe

ROOT_DIR=../../..

COMPILER_FLAGS=-O0 -ffunction-sections -fdata-sections -g2 -Wstack-usage=40 -mg14 -c

LINKER_FLAGS=-O0 -ffunction-sections -fdata-sections -g2 -Wstack-usage=40 -mg14 -Wl,-M=$(EXEC).map -Wl,--start-group -lgcc -Wl,--end-group -nostartfiles -Wl,-e_PowerON_Reset -T linker_script.ld


ASM_FLAGS=-O0 -ffunction-sections -fdata-sections -g2 -Wstack-usage=40 -mg14 -x assembler-with-cpp -Wa,--gdwarf2 -c 



OUTPUT_DIR=$(ROOT_DIR)/bin


FILES=\
	hwinit \
	inthandler \
	vects 

all: compile assemble

compile:$(FILES)

assemble:
	$(CC) $(ASM_FLAGS) start.S -o $(OUTPUT_DIR)/start.o

hwinit:
	$(CC) $(COMPILER_FLAGS) hwinit.c -o $(OUTPUT_DIR)/hwinit.o


inthandler:
	$(CC) $(COMPILER_FLAGS) inthandler.c -o $(OUTPUT_DIR)/inthandler.o

vects:
	$(CC) $(COMPILER_FLAGS) vects.c -o $(OUTPUT_DIR)/vects.o


 
