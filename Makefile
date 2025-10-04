TARGET = main

ASM_FILES = $(wildcard ASM/*.asm)
C_FILES = main.c
OBJ = $(ASM_FILES:.asm=.o) $(C_FILES:.c=.o)

CC = clang
CCFLAGS = -g -Wall -Wextra -Werror -fPIE 
ASM = nasm
ASMFLAGS = -f elf64 -g -F dwarf

all: $(TARGET)

%.o: %.asm
	$(ASM) $(ASMFLAGS) -o $@ $<

%.o: %.c
	$(CC) $(CCFLAGS) -c -o $@ $<

$(TARGET): $(OBJ)
	$(CC) $(CCFLAGS) -pie -o $@ $^

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(TARGET)

re: fclean all

.PHONY: all clean fclean re
