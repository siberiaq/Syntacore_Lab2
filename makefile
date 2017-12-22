start: main.o factorial.o
	gcc main.o factorial.o -o start -lm
	getobjdump
	getobjcopy
getobjdump:
	objdump -x -s -w -d start > start.dump
getobjcopy:
	objcopy -O binary start start.bin
Main.o: main.c
	gcc -c main.c
Factorial.o: factorial.c
	gcc -c factorial.c
clean:
	rm -f start main.o factorial.o start.dump start.bin
