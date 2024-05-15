ifeq ($(OS), Windows_NT)
	link = -lws2_32
endif

build: src/*.cc
	g++ -o server.exe src/*.cc -lpyrite -lmocutils -lpthread -DWindows $(link)

run: build
	./server.exe

clean:
	rm -rf *.o
	rm -rf *.exe
