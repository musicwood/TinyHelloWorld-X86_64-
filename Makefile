TinyHelloWorld: TinyHelloWorld.o TinyHelloWorld.lds
	ld -s -static -T TinyHelloWorld.lds TinyHelloWorld.o -o TinyHelloWorld

TinyHelloWorld.o: TinyHelloWorld.c
	gcc -c -fno-builtin TinyHelloWorld.c -m64

clean:
	rm TinyHelloWorld.o TinyHelloWorld
