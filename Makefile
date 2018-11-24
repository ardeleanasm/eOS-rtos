CC_PREFIX=arm-none-eabi-

CC=$(CC_PREFIX)gcc



CC_FLAGS=

CURR_DIR=$(shell pwd)

INCLUDE_FILES=\
	$(CURR_DIR)/include


FLAGS=



OUTPUT_DIR=bin



OBJECTS=\
	eos

FILES=\




all: clean compile link


link:


compile:




clean:
	rm -rf bin/
