# Set this variable to point to folder share of your SMACK installation
INSTALL_SHARE = ../../../../share

CC = clang
LD = llvm-link
PATH1 = ../../stub_model/source-new
PATH2 = ../../stub_model/header-new
PATH3 = ../../CA_variants
PATH4 = $(INSTALL_SHARE)/smack/include
INC = -I $(PATH1) -I $(PATH2) -I $(PATH3) -I $(PATH4)
CFLAGS = -c -Wall -emit-llvm -O0 -g $(INC)

#SOURCES = main_reno_undo.c
#OBJS = $(subst .c,.bc,$(SOURCES))

#all: $(OBJS)
#	$(LD) -o reno_undo.bc $(OBJS)

#main_reno_undo.bc: main_reno_undo.c

#%.bc: %.c
#	$(CC) $(CFLAGS) $< -o $@

#clean:
#	rm -f *.bc *.bpl


#DEBUG = debug
#$(DEBUG): $(DEBUG).c $(wildcard $(PATH1)/*.c) $(wildcard $(PATH3)/*.c) $(wildcard $(PATH2)/*.h)
#	$(CC) $(CFLAGS) $(DEBUG) $(DEBUG).c $(INC)

DEBUGS1 = aimd_simple_original
$(DEBUGS1): $(DEBUGS1).c $(wildcard $(PATH1)/*.c) $(wildcard $(PATH3)/*.c) $(wildcard $(PATH2)/*.h) $(wildcard $(PATH4)/*.h)
	$(CC) $(CFLAGS) $(DEBUGS1).c $(INC)

DEBUGS2 = aimd_simple_aggregation
$(DEBUGS2): $(DEBUGS2).c $(wildcard $(PATH1)/*.c) $(wildcard $(PATH3)/*.c) $(wildcard $(PATH2)/*.h) $(wildcard $(PATH4)/*.h)
	$(CC) $(CFLAGS) $(DEBUGS2).c $(INC)

DEBUG1 = aimd_n1
$(DEBUG1): $(DEBUG1).c $(wildcard $(PATH1)/*.c) $(wildcard $(PATH3)/*.c) $(wildcard $(PATH2)/*.h) $(wildcard $(PATH4)/*.h)
	$(CC) $(CFLAGS) $(DEBUG1).c $(INC)

DEBUG2 = aimd_n2
$(DEBUG2): $(DEBUG2).c $(wildcard $(PATH1)/*.c) $(wildcard $(PATH3)/*.c) $(wildcard $(PATH2)/*.h) $(wildcard $(PATH4)/*.h)
	$(CC) $(CFLAGS) $(DEBUG2).c $(INC)

DEBUG3 = aimd_n3
$(DEBUG3): $(DEBUG3).c $(wildcard $(PATH1)/*.c) $(wildcard $(PATH3)/*.c) $(wildcard $(PATH2)/*.h) $(wildcard $(PATH4)/*.h)
	$(CC) $(CFLAGS) $(DEBUG3).c $(INC)
