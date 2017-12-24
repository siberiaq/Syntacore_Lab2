SRC = main.c factorial.c
GCC = gcc
ODUMP = objdump
OCOPY = objcopy
CFLAGS = -c
OBJ = $(SRC:.c=.o)

start: $(OBJ)
	$(GCC) $(OBJ) -o factorial
	$(ODUMP) -x -s -w -d factorial > factorial.dump
	$(OCOPY) -O binary factorial factorial.bin

main.o: main.c
	$(GCC) $(CFLAGS) main.c

factorial.o: factorial.c
	$(GCC) $(CFLAGS) factorial.c

clean:
	rm -f factorial $(OBJ) factorial.dump factorial.bin
