# Set this variable to point to folder share of your SMACK installation
INSTALL_SHARE = ../../../../share

CC = clang
LD = llvm-link
PATH1 = ../../stub_model/source
PATH2 = ../../stub_model/header
PATH3 = ../../CA_variants
PATH4 = $(INSTALL_SHARE)/smack/include
INC = -I $(PATH1) -I $(PATH2) -I $(PATH3) -I $(PATH4)
CFLAGS = -c -Wall -emit-llvm -O0 -g $(INC)

SOURCES = main_reno_undo.c
OBJS = $(subst .c,.bc,$(SOURCES))

all: $(OBJS)
	$(LD) -o reno_undo.bc $(OBJS)

main_reno_undo.bc: main_reno_undo.c

%.bc: %.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f *.bc *.bpl


#MAIN_VAR2=main_reno_undo
#$(MAIN_VAR2):$(MAIN_VAR2).c $(wildcard $(PATH1)/*.c) $(wildcard $(PATH3)/*.c) $(wildcard $(PATH2)/*.h)
#	$(CC) $(MAIN_VAR2).c $(INC)