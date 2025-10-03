TARGET = main


ASM_FILES = $(wildcard ASM/*.asm)
C_FILES = main.c                     
OBJ = $(ASM_FILES:.asm=.o) $(C_FILES:.c=.o)

# Compilateurs et options
CC = clang
CCFLAGS = -g -Wall -Wextra -Werror  
ASM = nasm
ASMFLAGS = -f elf64 -g -F dwarf 

LD = clang        
LDFLAGS =

# Règles
all: $(TARGET)

%.o: %.asm
	$(ASM) $(ASMFLAGS) -o $@ $<

%.o: %.c
	$(CC) $(CCFLAGS) -c -o $@ $<

$(TARGET): $(OBJ)
	$(CC) $(CCFLAGS) $(LDFLAGS)   -o $@ $^

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(TARGET)
	

re: clean all

.PHONY: all clean re
