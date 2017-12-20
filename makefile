start: main.o factorial.o
	gcc main.o factorial.o -o start -lm
objdump:
	objdump -x -s -w -d start > start.dump
objcopy:
	objcopy -O binary start start.bin
Hello.o: main.c
	gcc -c main.c
Func.o: factorial.c
	gcc -c factorial.c
clean:
	rm -f start main.o factorial.o start.dump start.bin