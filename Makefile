build: src/*.cc
	g++ -o server.elf src/*.cc -lpyrite -lmocutils -lpthread

run: build
	./server.elf

clean:
	rm -rf *.o
	rm -rf *.elf
