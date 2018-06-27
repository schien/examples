CC=clang
CXX=clang++

all: hello_objcopy

data.o: data.txt
	touch tmp.c
	$(CC) -c -o tmp.o tmp.c
	ld -r -sectcreate binary hello_bin data.txt -o $@ tmp.o
	rm tmp.*

hello_objcopy.o: hello_objcopy.cpp
	$(CC) -c -o $@ $^

hello_objcopy: hello_objcopy.o data.o
	$(CC) -o $@ $^
