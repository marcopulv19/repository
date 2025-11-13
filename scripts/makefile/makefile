# INPUT
MAIN = main
LIB = lib1 lib2
HDR = $(LIB:=.h)
# OUTPUT
FILE = $(MAIN) $(LIB)
SRC = $(FILE:=.c)
PRP = $(FILE:=.i)
ASM = $(FILE:=.s)
OBJ = $(FILE:=.o)
ELF = $(MAIN:=.elf)

# COMPILER
CC=gcc
CC_OPTS=-Wall --std=gnu99

# $@ Target
# $< First dependency
# $^ All dependencies

# PREPROCESSING
%.i:	%.c
	$(CC) $(CC_OPTS) -E $< -o $@
# COMPILING
%.s:	%.i
	$(CC) $(CC_OPTS) -S $< -o $@
# ASSEMBLING
%.o:	%.s
	$(CC) $(CC_OPTS) -c $< -o $@
# LINKING
%.elf:	%.o $(OBJ)
	$(CC) $(CC_OPTS) $^ -o $@

# MAKE COMMANDS
.phony:	prp cmp asm lnk all clean
prp: $(PRP)
cmp: $(ASM)
asm: $(OBJ)
lnk: $(ELF)
all: prp cmp asm lnk
clean:
	rm -rf *.i *.s *.o *.elf
